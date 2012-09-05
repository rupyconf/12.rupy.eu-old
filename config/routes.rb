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
    get "/cities/:state_id", :to => "cities#index"
    get "payment", :to => "payments#show"
    post "payment", :to => "payments#update"
  end

  root :to => "home#show"

end
