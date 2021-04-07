Rails.application.routes.draw do
  root 'home#index'

  get 'on/:year/:month/:day' => 'day#on', as: 'day'
end
