class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post Saved"
      redirect_to root_path
    else
      flash[:alert] = "There were Errors in creating this post"
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post Updated"
      redirect_to root_path
    else
      flash[:alert] = "There were Errors in updating this post"
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "Post Deleted"
    else
      flash[:alert] = "There were Errors in deleting this post"
    end
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:name,:body)
  end
end
