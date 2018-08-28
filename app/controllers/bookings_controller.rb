class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

    def index
      @bookings = Booking.all
      json_response(@bookings)
    end

    def create
      @booking = Booking.create!(booking_params)
      json_response(@booking, :created)
    end

    def show
      json_response(@booking)
    end

    def update
      @booking.update(booking_params)
      head :no_content
    end

    def destroy
      @booking.destroy
      head :no_content
    end

    private

    def set_booking
      @booking = Booking.find(params[:booking_ref])
    end

    def booking_params
      params.permit(:amount, :booking_date)
    end
end
