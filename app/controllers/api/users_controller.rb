class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: [:create]
  
  def create
    @user = User.new(
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      image_url: params[:image_url],
      bio: params[:bio]
    )
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end

  def update
    @user = current_user 
    @user.user_name = params[:user_name] || @user.user_name
    @user.email = params[:email] || @user.email
    if params[:password]
      @user.password = params[:password]
      @user.password_confirmation = params[:password_confirmation]
    end
    @user.password = params[:password] || @user.password
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
    @user.image_url = params[:image_url] || @user.image_url
    @user.bio = params[:bio] || @user.bio

    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end

    def destroy
      @user = current_user
      if @user.destroy
        render json: {message: "User deleted"}
      else
        render json: {message: "Unauthorized"}
      end
    end
  end
end
