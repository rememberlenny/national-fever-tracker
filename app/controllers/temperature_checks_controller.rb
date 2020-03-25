class TemperatureChecksController < ApplicationController
  skip_before_action :verify_authenticity_token

  # before_action :set_temperature_check, only: [:show, :edit, :update, :destroy]

  # # GET /temperature_checks
  # def index
  #   @pagy, @temperature_checks = pagy(TemperatureCheck.all)
  # end

  # # GET /temperature_checks/1
  # def show
  # end

  # GET /temperature_checks/new
  def new
    @temperature_check = TemperatureCheck.new
    if params[:temperature] === 'normal'
        @temperature_check.temperature = 'normal'
    end
  end

  def record_temp
  end

  # # GET /temperature_checks/1/edit
  # def edit
  # end

  # POST /temperature_checks
  def create
    @temperature_check = TemperatureCheck.new(temperature_check_params)

    if @temperature_check.save
      redirect_to thank_you_path, notice: 'Temperature check was successfully created.'
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
    def set_temperature_check
      @temperature_check = TemperatureCheck.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def temperature_check_params
      params.require(:temperature_check).permit(:temperature, :symptoms, :age, :loc_city, :loc_zip, :loc_state, :temperature_value)
    end
end
