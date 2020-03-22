class TrackerRemindersController < ApplicationController
  before_action :set_tracker_reminder, only: [:show, :edit, :update, :destroy]

  # GET /tracker_reminders
  def index
    @pagy, @tracker_reminders = pagy(TrackerReminder.all)
  end

  # GET /tracker_reminders/1
  def show
  end

  # GET /tracker_reminders/new
  def new
    @tracker_reminder = TrackerReminder.new
  end

  # GET /tracker_reminders/1/edit
  def edit
  end

  # POST /tracker_reminders
  def create
    @tracker_reminder = TrackerReminder.new(tracker_reminder_params)

    if @tracker_reminder.save
      redirect_to @tracker_reminder, notice: 'Tracker reminder was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tracker_reminders/1
  def update
    if @tracker_reminder.update(tracker_reminder_params)
      redirect_to @tracker_reminder, notice: 'Tracker reminder was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tracker_reminders/1
  def destroy
    @tracker_reminder.destroy
    redirect_to tracker_reminders_url, notice: 'Tracker reminder was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tracker_reminder
      @tracker_reminder = TrackerReminder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tracker_reminder_params
      params.require(:tracker_reminder).permit(:email, :time_to_send)
    end
end
