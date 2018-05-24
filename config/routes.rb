Rails.application.routes.draw do
  # devise_for :users
  get '/users/auth/twitter',to: "users/omniauth#passthru"
  get '/users/auth/twitter/callback',to: "users/omniauth#twitter"
  get '/users/auth/github/callback',to: "users/omniauth#github"
  get '/users/auth/facebook/callback',to: "users/omniauth#facebook"
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  root :to => "welcome#index"
  # devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
