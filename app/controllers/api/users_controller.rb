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
      render json: { message: "User created" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end
end
