Rails.application.routes.draw do
  root 'home#index'

  get 'on/:year/:month/:day' => 'day#show', as: 'day'

  resources :targets
end
