class SessionsController < ApplicationController
  def create
    render text: request.env['omniauth.auth'].to_yaml
  end

  def destroy
	  if current_user
	    session.delete(:user_id)
	    flash[:success] = 'See you!'
	  end
	  redirect_to root_path
	end
end