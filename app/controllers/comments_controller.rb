class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new

  end

  def create
  if Comment.create(post_params)
    redirect_to gossips_path
  else 
    render :new
  end

  def update

  end
  def edit

  end
  def destroy

  end

  private
  def post_params
    post_params = params.require(:comment).permit(:gossip_id, :content, :user_id)
  end
end
