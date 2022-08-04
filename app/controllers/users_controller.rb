class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    if User.create(post_params)
      redirect_to welcome_path(session.id)
    else
      render :new
    end
  end

  def update
    @gossip = Gossip.find(params[:id])

    if @gossip.update(post_params)
      redirect_to gossips_path
    else
      render :edit
    end
  end

  private

  def post_params
    post_params = params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :password, :city_id)
  end
end
