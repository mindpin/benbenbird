Rails.application.routes.draw do
  get "/intro" => 'index#intro', as: :intro
  root to: 'index#index'
end
