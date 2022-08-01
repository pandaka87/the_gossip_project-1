class GossipController < ApplicationController
  def show
    @find_by_user_id = Gossip.find(params[:id]).user_id
    @find_by_city_id = User.find(Gossip.find(params[:id]).user_id).city_id
  end
end
