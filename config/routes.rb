Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    authenticated :user do
      root :to => 'users#index'
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new'
    end
    get 'password_edit', to: 'users/registrations#password_edit'
    patch 'password_update', to: 'users/registrations#password_update'
  end
  resources :users,      only: [:index, :show]
  resources :microposts, only: [:create, :destroy]
end
