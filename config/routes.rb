Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root :to => 'pages#show'
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new'
    end
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get '/show',  to: 'pages#show'
end
