class BookingDetailsController < ApplicationController
  before_action :set_booking_detail, only: [:show, :update, :destroy]
  before_action :set_booking, only: [:create]

    def index
      @booking_details = BookingDetail.all
      json_response(@booking_details)
    end

    def create
      @booking_details = @booking.booking_details.create!(booking_detail_params)
      json_response(@booking.booking_details, :created)
    end

    def show
      json_response(@booking_detail)
    end

    def update
      @booking_detail.update(booking_detail_params)
      head :no_content
    end

    def destroy
      @booking_detail.destroy
      head :no_content
    end

    private

    def set_booking
      @booking = Booking.find(params[:booking_id])
    end

    def set_booking_detail
      @booking_detail = BookingDetail.find(params[:id])
    end

    def booking_detail_params
      params.permit(:checkin, :checkout, :amount, :room_id)
    end
end
