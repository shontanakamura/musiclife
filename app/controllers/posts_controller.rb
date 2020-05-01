class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  
  def index

  end
  def new
    @post = Post.new
  end

  def create
    @posts = Post.create(post_params)
    @posts.save
    # redirect_to root_path
  end

  def show
    @posts = Post.includes(:user).order("created_at DESC")
  end

  def edit

  end
  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def search
    @posts = Post.includes(:user).order("created_at DESC")
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
