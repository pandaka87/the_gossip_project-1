class AuthorController < ApplicationController
  def authors
    @user = User.find(params[:id])
  end
end
