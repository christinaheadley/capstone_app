class Api::CommentsController < ApplicationController

  before_action :authenticate_user, except: [:show]

  # def show
  #   @comment = Comment.find_by(id: params[:id])
  #   if @comment
  #     render "show.json.jb"
  #   else
  #     render json: {message: "No comments yet."}
  #   end
  # end
  def create
    @comment = Comment.new(
    user_id: current_user.id,
    post_id: params[:post_id],
    body: params[:body],
    image_url: params[:image_url],
    )
    if @comment.save
      render "show.json.jb"
    else
      render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @comment = current_user.comments.find_by(id: params[:id])
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
