Rails.application.routes.draw do
  get "/about" => 'index#about', as: :about
  get "/intro" => 'index#intro', as: :intro
  root to: 'index#index'
end
