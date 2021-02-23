class Api::CommentsController < ApplicationController

  before_action :authenticate_user, except: [:index, :show]

  def index
    @comments = Comment.all
    render "index.json.jb"
  end

  def create
    @comment = Comment.new(
    post_id: params[:post_id],
    user_id: current_user.id,
    body: params[:body],
    image_url: params[:image_url],
    )
    if @comment.save
      render "show.json.jb"
    else
      render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @comment = Comment.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    @comment.post_id = params[:post_id] || @comment.post_id
    @comment.user_id = params[:user_id] || @comment.user_id
    @comment.body = params[:body] || @comment.body
    @comment.image_url = params[:image_url] || @comment.image_url
    if @comment.save
      render "show.json.jb"
    else
      render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    if @comment.destroy
      render json: {message: "Comment deleted"}
    else
      render json: {message: "Not authorized"}
    end
  end
end
