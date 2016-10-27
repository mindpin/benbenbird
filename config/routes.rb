Rails.application.routes.draw do
  root to: 'index#index'
  get '/packages' => 'index#packages', as: :packages
  get '/plans' => 'index#plans', as: :plans
  get '/about' => 'index#about', as: :about
end
