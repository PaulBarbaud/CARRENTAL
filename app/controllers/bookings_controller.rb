class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.car_id = params[:car_id]
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user_id = current_user.id
    if @booking.save
      flash[:notice] = "Saved successfully"
      redirect_to car_path(@car)
    else
      flash[:error] = "There were errors..."
      render :new, status: :unprocessable_entity
    end
  end
  private
  def booking_params
    params.require(:booking).permit(
      :starts_at,
      :ends_at)
  end
end
