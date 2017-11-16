Logs::Engine.routes.draw do
  root 'logs#index'

  resources :logs, only: :index
end
