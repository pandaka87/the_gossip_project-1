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
end
