Rupy::Application.routes.draw do

  devise_for :admins

  namespace :admin do
    root :to => "events#index"
    resources :events
    resources :speakers
    resources :sponsors
    resources :teams
  end

  root :to => 'home#show'

end
