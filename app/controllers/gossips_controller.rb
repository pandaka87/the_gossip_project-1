class GossipsController < ApplicationController
  before_action :authenticate_user, only: [:new]

  def index
    @gossips = Gossip.all
  end

  def show
    @find_by_user_id = Gossip.find(params[:id]).user_id
    @find_by_city_id = User.find(Gossip.find(params[:id]).user_id).city_id
    @author = params[:id]
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new('title' => params[:title], 'content' => params[:content])
    @gossip.user = current_user

    if @gossip.save
      redirect_to welcome_path(session.id)

    else
      render new_gossip_path
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end 

  def update
    @gossip = Gossip.find(params[:id])

    if @gossip.update(post_params)
      redirect_to gossips_path
    else
      render :edit
    end
  end

  def destroy
   @gossip = Gossip.find(params[:id])
   @gossip.destroy
   redirect_to gossips_path
  end 
  
  private
    def post_params
      post_params = params.require(:gossip).permit(:title, :content)
    end

    def authenticate_user
      unless current_user
        flash[:danger] = "Please log in."
        redirect_to new_session_path
      end
    end
end
