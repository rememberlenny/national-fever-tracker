class ApplicationController < ActionController::Base
  include Jumpstart::Controller
  include Teams::SubscriptionStatus
  # include Users::TimeZone
  include Pagy::Backend
  include CurrentHelper

  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :masquerade_user!

  before_action :prepare_meta_tags

  def prepare_meta_tags(options={})
    site_name   = "NationalFeverTracker.com"
    title       = 'Lets track COVID-19 together'
    description = "Even if you are not sick or even if you do not think that you are at risk for Covid-19. We need your help!"
    image       = options[:image] || "https://national-fever-tracker.s3.amazonaws.com/og-graph.png"
    current_url = request.url

    # Let's prepare a nice set of defaults
    defaults = {
      site:        site_name,
      title:       title,
      image:       image,
      description: description,
      keywords:    %w[covid-19 coronoavirus temperature check daily checkyourtemp],
      twitter: {
        site_name: site_name,
        site: '@natfevertracker',
        card: 'Receive a daily reminder to check your temperature',
        description: description,
        image: image
      },
      og: {
        url: current_url,
        site_name: site_name,
        title: title,
        image: image,
        description: description,
        type: 'website'
      }
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end

  protected

    # To add extra fields to Devise registration, add the attribute names to `extra_keys`
    def configure_permitted_parameters
      extra_keys  = [:avatar, :name, :time_zone]
      signup_keys = extra_keys + [:terms_of_service]
      devise_parameter_sanitizer.permit(:sign_up,           keys: signup_keys)
      devise_parameter_sanitizer.permit(:account_update,    keys: extra_keys)
      devise_parameter_sanitizer.permit(:accept_invitation, keys: extra_keys)
    end

    def after_sign_in_path_for(resource_or_scope)
      stored_location_for(resource_or_scope) || super
    end

    # Helper method for verifying authentication in a before_action, but redirecting to sign up instead of login
    def authenticate_user_with_sign_up!
      unless user_signed_in?
        store_location_for(:user, request.fullpath)
        redirect_to new_user_registration_path, alert: "Please create an account first"
      end
    end
end
