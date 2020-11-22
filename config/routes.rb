Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end

  root "welcome#index" #NOT FOR LOGGINED

  resources :docs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
