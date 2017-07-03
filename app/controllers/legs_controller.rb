class LegsController < ApplicationController
  before_action :set_leg, only: [:show, :edit, :update, :destroy]  
 
  def index
    @legs = Leg.all
  end
  
  def new
    @leg = Leg.new
  end
  
  def show
  end
  
  def edit
  end
  
  def create
    @leg = Leg.new(leg_params)

    respond_to do |format|
      if @leg.save
        format.html { redirect_to @leg, notice: 'leg info was successfully created.' }
        format.json { render :show, status: :created, location: @leg }
      else
        format.html { render :new }
        format.json { render json: @leg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legs/1
  # PATCH/PUT /legs/1.json
  def update
    respond_to do |format|
      if @leg.update(leg_params)
        format.html { redirect_to @leg, notice: 'leg was successfully updated.' }
        format.json { render :show, status: :ok, location: @leg }
      else
        format.html { render :edit }
        format.json { render json: @legs.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legs/1
  # DELETE /legs/1.json
  def destroy
    @leg.destroy
    respond_to do |format|
      format.html { redirect_to legs_url, notice: 'leg info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leg
      @leg = Leg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leg_params
      params.require(:leg).permit(:origin, :destination)
    end
end
