Rails.application.routes.draw do
  resources :groups do
    collection do
      post ':id/new/hotel', :action => 'add_hotel'
      get ':id/hotels', :action => 'show_hotels'
    end
  end
  resources :room_types
  resources :hotels do
    collection do
      get ':id/hotel/group', :action => 'hotel_group'
    end
    resources :rooms do
      resources :bookings do
        resources :payments
      end
    end
    collection do
      get ':id/room_types', :action => 'room_types'
    end
  end
end
