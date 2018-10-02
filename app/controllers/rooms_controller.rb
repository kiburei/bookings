class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :update, :destroy]

    def index
      @rooms = Hotel.find(params[:hotel_id]).rooms
      json_response(@rooms)
    end

    def all_rooms
      @rooms = Room.all
      json_response(@rooms)
    end

    def create
      @hotel = Hotel.find(params[:hotel_id])
      @room = @hotel.rooms.build(room_params)
      if @room.save!
        json_response(@room, :created)
      end
    end

    def show
      json_response(@room)
    end

    def update
      @room.update(room_params)
      head :no_content
    end

    def destroy
      @room.destroy
      head :no_content
    end

    private

    def set_room
      @room = Room.find(params[:id])
    end

    def room_params
      params.permit(:status, :room_type_id, :room_number)
    end
end
