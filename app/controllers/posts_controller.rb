class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :like, :dislike]

  def index
    @posts = Post.all
  end

  def show
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully destroyed.'
  end

  def like
    @post = Post.find(params[:id])

    if @post
      @post.likes = @post.likes.to_i + 1
      @post.save
      redirect_to @post
    else
      redirect_to posts_path, alert: 'Post not found'
    end
  end


  def dislike
    @post = Post.find(params[:id])

    if @post
      @post.dislikes = @post.dislikes.to_i + 1
      @post.save
      redirect_to @post
    else
      redirect_to posts_path, alert: 'Post not found'
    end
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
