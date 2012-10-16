Rupy::Application.routes.draw do

  devise_for :admins

  namespace :admin do
    root :to => "events#index"
    resources :events, :except => [:show]
    resources :speakers, :except => [:show]
    resources :schedules, :except => [:show]
    resources :sponsors, :except => [:show]
    resources :teams, :except => [:show]
    resources :trainings, :except => [:show]
  end

  namespace :br do
    resource :event, :only => [] do
      resources :inscriptions, :only => [:index, :new]
    end

    resources :trainings, :only => [] do
      resources :inscriptions, :only => [:index, :new]
    end

    resources :inscriptions, :only => [:create, :show, :edit, :update]
    get "payment", :to => "inscriptions#confirm"
    post "payment", :to => "inscriptions#pagseguro_update"

    get "/cities/:state_id", :to => "cities#index"
  end

  root :to => "home#show"

end
