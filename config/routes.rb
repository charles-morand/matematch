Rails.application.routes.draw do # rubocop:disable Metrics/BlockLength
  devise_for :users

  # unauthenticated :user do
    root to: 'pages#home'
  # end

  # authenticate :user, ->(user) { user.role == "Explorer" } do
  #   root to: "explorer/dashboards#index", as: :explorer_root
  # end

  # authenticate :user, ->(user) { user.role == "Guide" } do
  #   root to: "guide/dashboards#show", as: :guide_root
  # end

  resource :profile, only: [:show, :edit, :update]

  namespace :guide do
    resource :dashboard, only: [:show]
    resource :chosen_activities, only: [:edit, :update]
    resources :contact_requests, only: [:index, :show] do
      member do
        patch :accept
        patch :decline
      end
    end
  end

  namespace :explorer do
    resource :dashboard, only: [:show]
    resources :activities, only: [:index]
    resources :matchings, only: [:new, :index]
    resources :matchings, only: [:show]
    resources :matching, only: [], param: :user_id do
      resources :contact_requests, only: [:create]
    end
    resources :contact_requests, only: [:index]
  end
end
