class DrivingStylesController < ApplicationController
  before_action :set_driving_style, only: [:show, :edit, :update, :destroy]

  # GET /driving_styles
  # GET /driving_styles.json
  def index
    @driving_styles = DrivingStyle.all
  end

  # GET /driving_styles/1
  # GET /driving_styles/1.json
  def show
  end

  # GET /driving_styles/new
  def new
    @driving_style = DrivingStyle.new
  end

  # GET /driving_styles/1/edit
  def edit
  end

  # POST /driving_styles
  # POST /driving_styles.json
  def create
    @driving_style = DrivingStyle.new(driving_style_params)

    respond_to do |format|
      if @driving_style.save
        format.html { redirect_to @driving_style, notice: 'Driving style was successfully created.' }
        format.json { render :show, status: :created, location: @driving_style }
      else
        format.html { render :new }
        format.json { render json: @driving_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driving_styles/1
  # PATCH/PUT /driving_styles/1.json
  def update
    respond_to do |format|
      if @driving_style.update(driving_style_params)
        format.html { redirect_to @driving_style, notice: 'Driving style was successfully updated.' }
        format.json { render :show, status: :ok, location: @driving_style }
      else
        format.html { render :edit }
        format.json { render json: @driving_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driving_styles/1
  # DELETE /driving_styles/1.json
  def destroy
    @driving_style.destroy
    respond_to do |format|
      format.html { redirect_to driving_styles_url, notice: 'Driving style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driving_style
      @driving_style = DrivingStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driving_style_params
      params.require(:driving_style).permit(:type)
    end
end
