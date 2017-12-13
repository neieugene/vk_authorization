class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def vkontakte
  	@par = request.env["omniauth.auth"]
  end
end
