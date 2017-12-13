class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def vkontakte
  	@par = request.env["omniauth.auth"]
  	@extra = request.env["omniauth.auth"].extra
  	@first_name = request.env["omniauth.auth"].extra.raw_info.last_name
  end
end
