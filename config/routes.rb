Rails.application.routes.draw do
  # User Auth
  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  get '/users', to: 'users#users'

  get '/roomtypes', to: 'room_types#all_room_types'
  get '/rooms', to: 'rooms#all_rooms'

  resources :groups do
    collection do
      post ':id/new/hotel', :action => 'add_hotel'
      get ':id/hotels', :action => 'show_hotels'
    end
  end


  resources :hotels do
      resources :room_types do
      end
    collection do
      get ':id/hotel/group', :action => 'hotel_group'
    end
    resources :bookings do
        resources :payments
        resources :booking_details
      end
    resources :rooms
    collection do
      get ':id/room_types', :action => 'room_types'
    end
  end

  resources :roles
end
