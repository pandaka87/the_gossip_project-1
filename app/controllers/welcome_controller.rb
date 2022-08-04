class WelcomeController < ApplicationController
  def index
    @gossips = Gossip.all
    if session[:user_id]
      @user = current_user
      end
  end

  def show
    @gossips = Gossip.all
  end
end