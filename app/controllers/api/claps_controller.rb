class Api::ClapsController < ApplicationController
  before_action :authenticate_user
  
  def create
    @clap = Clap.new(
      user_id: current_user.id,
      post_id: params[:post_id]
    )
    if @clap.save
      render "show.json.jb"
    else
      render json: {message: "Please log in to clap."}
    end
  end
  # def udpate
  #   @claps = Clap.find_by(id: params[:id])
  #   render "show.json.jb"
  # end
  
end
