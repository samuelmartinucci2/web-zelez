class PostsController < ApplicationController
  before_action :set_post, only:  [:edit, :show, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show

  end

  def edit

  end

  def create
    @post = Post.new(post_params)

    @post.save
    render :new
  end

  def update
    @post.update(post_params)
    render :new
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :picture)
  end
end
