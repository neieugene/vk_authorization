Rails.application.routes.draw do
  resources :clients
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  devise_for :users,
  controllers: { omniauth_callbacks: "client#index" }
end
