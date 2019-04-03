class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params[:reservation])
    if @reservation.deliver
      flash[:success] = "Email sent !"
    else
      flash[:alert] = "Cannot send reservation"
      render :new
    end
  end
end
