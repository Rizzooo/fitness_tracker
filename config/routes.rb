Rails.application.routes.draw do
  resources :clients do
    resources :training_sessions, only: [:new, :show, :index]
  end
  resources :training_sessions, only: [:new, :show, :edit]
  resources :trainers, only: [:new, :show, :index]

  '/login' => 'sessions/new'
  '/home' => 'sessions/index'
end