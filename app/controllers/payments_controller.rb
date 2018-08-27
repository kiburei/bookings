class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :update, :destroy]
  before_action :set_booking, only: [:create]

    def index
      @payments = Payment.all
      json_response(@payments)
    end

    def create
      @payment = @booking.payments.build(payment_params)
      @payment.save
      json_response(@payment, :created)
    end

    def show
      json_response(@payment)
    end

    def update
      @payment.update(payment_params)
      head :no_content
    end

    def destroy
      @payment.destroy
      head :no_content
    end

    private

    def set_booking
      @booking = Booking.find(params[:booking_id])
    end

    def set_payment
      @payment = Payment.find(params[:id])
    end

    def payment_params
      params.permit(:amount, :payment_mode, :date_paid, :paid_by)
    end
end
