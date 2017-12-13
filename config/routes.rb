Rails.application.routes.draw do
  resources :humen
  devise_for :users,
    controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
end
