class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  before_action :parse_ages, only: [:create, :update]
  before_action :parse_model_year_month, only: [:create, :update]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to cars_path, notice: "Car was successfully created. #{undo_link}" }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: "Car was successfully updated. #{undo_link}" }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: "Car was successfully destroyed. #{undo_link}" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:brand, :model, :model_year_month, :kilometers, :color, :ages => [])
    end

    def undo_link
      view_context.link_to 'undo', revert_version_path(@car.versions.scope.last), method: :post
    end

    def parse_ages
      ages = params[:car][:ages].present? ? params[:car][:ages].split(',') : []
      params[:car][:ages] = ages
    end

    def parse_model_year_month
      if params[:car]['year(1i)'].present? && params[:car]['year(2i)'].present?
        params[:car][:model_year_month] = Date.new(params[:car]['year(1i)'].to_i,
                                                   params[:car]['year(2i)'].to_i)
      end
    end
end
