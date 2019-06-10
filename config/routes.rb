Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root :to => 'users#index'
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new'
    end
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :users, :only => [:index, :show]
end
