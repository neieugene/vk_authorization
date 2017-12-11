Rails.application.routes.draw do
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  devise_for :users, # <- внимание, запятая, вызов ещё не кончился
  controllers: { omniauth_callbacks: "users/vkontakte" }
  # У меня контроллер Users::OmniauthCallbacksController
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
