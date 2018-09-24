class HotelsController < ApplicationController
  before_action :set_hotel, only: [:hotel_group, :add_room, :add_room_type, :room_types, :show, :update, :destroy]

    def index
      @hotels = Hotel.all
      json_response(@hotels)
    end

    def hotel_group
      @group = @hotel.group
      json_response(@group)
    end

    def room_types
      @room_types = @hotel.room_types
      json_response(@room_types)
    end

    def add_room_type
      @room_type = @hotel.room_types.build
      @room_type.update(room_type_params)
      json_response(@room_type, :created)
    end

    def create
      @hotel = Hotel.create!(hotel_params)
      json_response(@hotel, :created)
    end

    def show
      json_response(@hotel)
    end

    def update
      @hotel.update(hotel_params)
      head :no_content
    end

    def destroy
      @hotel.destroy
      head :no_content
    end

    private

    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    def hotel_params
      params.permit(:name, :Address, :location)
    end

    def room_params
      params.permit(:status, :cost, :details, :capacity, :beds, :baths)
    end

    def room_type_params
      params.permit(:name)
    end
end
