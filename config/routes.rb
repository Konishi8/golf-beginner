Rails.application.routes.draw do
  get 'practices/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: 'home#top'
  get 'mypage', to: 'mypage#show', as: 'mypage'
  resources :practice_records
  resources :key_points do
    resource :favorite, only: %i[create destroy]
  end
  resources :practices
  resources :practice_menus
  get 'how_to_use', to: 'pages#how_to_use', as: 'howto'
end
