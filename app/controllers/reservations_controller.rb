class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params[:reservation])
    @reservation.request = request
    if request.deliver
      flash.now[:error] = nil
    else
      flash.now[:error] = "Cannot send reservation"
      render :new
    end
  end
end
