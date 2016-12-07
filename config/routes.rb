require 'sidekiq/web'

Rails.application.routes.draw do
  resources :notes

  mount Sidekiq::Web => '/sidekiq'
end
