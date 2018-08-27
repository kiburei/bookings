class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]
  before_action :set_room, only: [:index, :create, :show]

    def index
      @bookings = @room.booking
      json_response(@bookings)
    end

    def create
      @room.booking = Booking.new(booking_params)
      @room.update(status: "Booked")
      @room.booking.save
      json_response(@room.booking, :created)
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

    def set_room
      @room = Room.find(params[:room_id])
    end

    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.permit(:checkin, :checkout, :arrival, :payment_status)
    end
end
