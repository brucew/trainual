Rails.application.routes.draw do
  resources :users, only: [:index, :create, :update, :destroy]

  root to: 'users#index'

  match '*path', via: :all, to: proc {[404, {}, ['']]} if Rails.env.production?
  match '', via: :all, to: proc {[404, {}, ['']]} if Rails.env.production?
end
