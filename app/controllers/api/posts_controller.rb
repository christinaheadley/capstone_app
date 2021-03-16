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
      claps: 0
    )
    if @post.save
      # make a bunch of post_tags that use various tag ids, and this new post's id
      # Once testing in frontend, take off eval method
      params[:tag_ids].each do |tag_id|
        PostTag.create(post_id: @post.id, tag_id: tag_id)
      end
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
    if @post.save
      # delete each post_tag from post
      @post.post_tags.destroy_all
      #create post_tags and attach to this instance of post
      params[:tag_ids].each do |tag_id|
        PostTag.create(post_id: @post.id, tag_id: tag_id)
      end
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
