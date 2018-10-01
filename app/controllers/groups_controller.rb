class GroupsController < ApplicationController
  before_action :set_group, only: [:add_hotel, :show_hotels, :show, :update, :destroy]

    def index
      @groups = Group.all
      json_response(@groups)
    end

    def create
      @group = Group.create!(group_params)
      json_response(@group, :created)
    end

    def add_hotel
      @hotel = @group.hotels.build(hotel_params)
      @hotel.save
      json_response(@hotel, :created)
    end

    def show_hotels
      @hotels = @group.hotels
      json_response(@hotels)
    end

    def show
      json_response(@group)
    end

    def update
      @group.update(group_params)
      head :no_content
    end

    def destroy
      @group.destroy
      head :no_content
    end

    private

    def set_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.permit(:name, :address, :location)
    end

    def hotel_params
      params.permit(:name, :Address, :location, :contact)
    end
end
