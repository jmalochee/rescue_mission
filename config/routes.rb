Rails.application.routes.draw do
  resources :questions, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :answers, only: [:new, :create ]
end
