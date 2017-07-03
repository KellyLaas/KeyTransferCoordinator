class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def show
    
  end

  def edit
    
  end

  def create
    @trip - Trip.new(trip_params)
  end

  def update
    @leg.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'trip info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
# Use callbacks to share common setup or constraints between actions.
  def set_trip
    @leg = trip.find(params[:id])
  end

# Never trust parameters from the scary internet, only allow the white list through.
  def trip_params
    params.require(:trip).permit(:name, :email)
  end
end
