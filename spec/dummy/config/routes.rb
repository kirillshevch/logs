Rails.application.routes.draw do
  mount Logs::Engine => '/logs'
end
