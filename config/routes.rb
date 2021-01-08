Rails.application.routes.draw do
  devise_for :lovers
  resources :posts do
    resources :hazelnuts
    resources :propagations
  end

  get "/explore", to: "pages#explore"

  root "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
