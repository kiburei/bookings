class RoomTypesController < ApplicationController
  before_action :set_room_type, only: [:show, :update, :destroy]

    def index
      @room_types = RoomType.all
      json_response(@room_types)
    end

    def create
      @room_type = RoomType.create!(room_type_params)
      json_response(@room_type, :created)
    end

    def show
      json_response(@room_type)
    end

    def update
      @room_type.update(room_type_params)
      head :no_content
    end

    def destroy
      @room_type.destroy
      head :no_content
    end

    private

    def set_room_type
      @room_type = RoomType.find(params[:id])
    end

    def room_type_params
      params.permit(:name, :charge, :baths, :beds, :occupancy, :description)
    end
end
