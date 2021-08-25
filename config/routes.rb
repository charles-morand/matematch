Rails.application.routes.draw do
  devise_for :users

  unauthenticated :user do
    root to: 'pages#home'
  end

  authenticate :user, ->(user) { user.role == "Explorer" } do
    root to: "explorer/dashboards#index", as: :explorer_root
  end

  authenticate :user, ->(user) { user.role == "Guide" } do
    root to: "guide/dashboards#show", as: :guide_root
  end

  resource :profile, only: [:show, :edit, :update]

  namespace :guide do
    resource :chosen_activities, only: [:edit, :update]
    resources :contact_requests, only: [:index, :show] do
      member do
        patch :accept
        patch :decline
      end
    end
  end

  namespace :explorer do
    resources :activities, only: [:index] do
      resources :matchings, only: [:new, :index]
    end
    resources :matchings, only: [:show] do
      resources :contact_requests, only: [:create]
    end
    resources :contact_requests, only: [:index]
  end
end
