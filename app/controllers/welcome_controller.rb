class WelcomeController < ApplicationController
  def welcomes
    @gossips = Gossip.all
  end
end