class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def vkontakte
  	unless (Human.where(:vk_id => request.env["omniauth.auth"].extra.raw_info.id).exists?)
  		human = Human.create(:vk_id => request.env["omniauth.auth"].extra.raw_info.id, :first_name => request.env["omniauth.auth"].extra.raw_info.first_name, :last_name => request.env["omniauth.auth"].extra.raw_info.last_name, :photo => request.env["omniauth.auth"].extra.raw_info.photo_100)
  		human.save
  	end
  	redirect_to "/humen"
  end
end
