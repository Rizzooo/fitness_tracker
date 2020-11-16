Rails.application.routes.draw do
  devise_for :trainers, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register', sign_up: 'sign_up'}

  root to: "application#index"

  resources :clients do
    resources :training_sessions, only: [:new, :show, :index]
  end

  resources :training_sessions

  resources :trainers, only: [:new, :show]
end