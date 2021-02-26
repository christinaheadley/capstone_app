class Api::PostsController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]
  def index
    @posts = Post.all
    render "index.json.jb"
  end

  def create
    @post = Post.new(
    user_id: current_user.id,
    title: params[:title],
    body: params[:body],
    image_url: params[:image_url],
    claps: params[:claps]
    )
    if @post.save
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @post = current_user.posts.find_by(id: params[:id])
    @post.title = params[:title] || @post.title
    @post.body = params[:body] || @post.body
    @post.image_url = params[:image_url] || @post.image_url
    @post.claps = params[:claps] || @post.claps
    if @post.save
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    if @post.destroy
      render json: {message: "Post deleted"}
    else
      render json: {message: "Not authorized"}
    end
  end
end
