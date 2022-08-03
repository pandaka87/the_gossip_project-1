class GossipsController < ApplicationController
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
    anonymous_user = User.find_by(first_name: 'Anonymous')
    @gossip = Gossip.new('title' => params[:title], 'content' => params[:content], user: anonymous_user)
    

    if @gossip.save
      redirect_to gossips_path

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
end
