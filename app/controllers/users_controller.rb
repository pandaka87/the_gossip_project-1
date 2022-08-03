class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    def show
      @user = User.find(params[:id])
    end
  end

  def new
    @user = User.new
  end
  
  def create
    user = User.create(post_params)
    # @user = User.new('first_name' => params[:first_name], 'last_name' => params[:last_name],'description' => params[:description])
    # if @user.save
      # redirect_to user_path(user.id)
    # else
    #   redirect_to users_path
    # end   
    if User.create(post_params)
      redirect_to users_path
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
    post_params = params.require(:user).permit(:first_name, :last_name, :description, :email, :age, :city_id)
  end
end
