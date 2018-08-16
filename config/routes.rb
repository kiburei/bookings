Rails.application.routes.draw do
  resources :groups
  resources :hotels do
    resources :room_types
    resources :rooms
  end
  resources :bookings do
    resources :payments
  end
end
