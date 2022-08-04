class SessionsController < ApplicationController
  def new
  #  @user = User.new
  end

  def create
    user = User.find_by(email: params[:email])
      if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to welcome_path(user.id)
      else
        flash[:alert] = 'Invalid email/password combination'
        render :new
      end
  end

  def destroy
    session.delete(:user_id)
    redirect_to welcome_index_path
  end
end
