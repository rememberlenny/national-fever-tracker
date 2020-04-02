class GmmTestController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  # before_action :set_temperature_check, only: [:show, :edit, :update, :destroy]

  # # GET /temperature_checks
  # def index
  #   @pagy, @temperature_checks = pagy(TemperatureCheck.all)
  # end

  # # GET /temperature_checks/1
  # def show
  # end

  # GET /gmm_test/new
  def new
    @gmm_test = GmmTest.new
    if params[:gmm] === 'no'
        @gmm_test.gmm = 'no'
    end
  end

  def record_gmm
  end

  # # GET /temperature_checks/1/edit
  # def edit
  # end

  # POST /temperature_checks
  def create
    @gmm_test = GmmTest.new(gmm_test_params)

    if @gmm_check.save
      redirect_to thank_you_path, notice: 'GmM was successfully created.'
    else
      render :new
    end
  end

  # # PATCH/PUT /temperature_checks/1
  # def update
  #   if @temperature_check.update(temperature_check_params)
  #     redirect_to @temperature_check, notice: 'Temperature check was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # # DELETE /temperature_checks/1
  # def destroy
  #   @temperature_check.destroy
  #   redirect_to temperature_checks_url, notice: 'Temperature check was successfully destroyed.'
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gmm_check
      @gmm_test = GmmTest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gmm_test_params
      params.require(:gmm_test).permit(:gmm, :symptoms, :age, :loc_city, :loc_zip, :loc_state)
    end
end
