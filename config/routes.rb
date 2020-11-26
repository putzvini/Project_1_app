Rails.application.routes.draw do
  root to: 'products#index'
  devise_for :users

  # devise_scope :user do
  #   authenticated :user do
  #     root 'pages#home', as: :authenticated_root
  #   end
  #   unauthenticated do
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #    end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do
    resources :purchases, only: [:create]
  end

  resources :purchases, only: [:show, :index]
  resources :products, only: [:index, :home]
end
