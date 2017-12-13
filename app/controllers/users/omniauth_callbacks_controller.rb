class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def vkontakte
  	@par = request.env["omniauth.auth"]
  	@extra = request.env["omniauth.auth"].extra
  	@first_name = request.env["omniauth.auth"].extra.raw_info.last_name
  	if (Human.where(:vk_id => request.env["omniauth.auth"].extra.raw_info.id).exists?)
  		human = Human.find(:vk_id => request.env["omniauth.auth"].extra.raw_info.id)
  	else
  		human = Human.create(:vk_id => request.env["omniauth.auth"].extra.raw_info.id, :first_name => request.env["omniauth.auth"].extra.raw_info.first_name, :last_name => request.env["omniauth.auth"].extra.raw_info.last_name)
  		human.save
  	end
  	@human = human
  	redirect_to "/humen"
  end
end
