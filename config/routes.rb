Logs::Engine.routes.draw do
  root 'logs#index'

  get ':name', to: 'logs#show'

  resources :logs, only: %i[index show]
end
