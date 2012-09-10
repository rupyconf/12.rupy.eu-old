Rupy::Application.routes.draw do

  devise_for :admins

  namespace :admin do
    root :to => "events#index"
    resources :events, :except => [:show]
    resources :speakers, :except => [:show]
    resources :sponsors, :except => [:show]
    resources :teams, :except => [:show]
    resources :trainings, :except => [:show]
  end

  namespace :br do
    resources :inscriptions, :only => [:new, :create, :show]
    get "payment/confirm", :to => "inscriptions#confirm"
    post "payment/confirm", :to => "inscriptions#update"

    get "/cities/:state_id", :to => "cities#index"
  end

  root :to => "home#show"

end
