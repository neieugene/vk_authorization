class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def vkontakte
  	@par = params
  end
end
