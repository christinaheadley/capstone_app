class Api::GifsController < ApplicationController
 
  def index
    @gifs = HTTP.get("http://api.giphy.com/v1/gifs/trending?&api_key=#{Rails.application.credentials.giphy_api[:api_key]}").parse["data"]
    render "index.json.jb"
  end

  def gif_search_index
    @gifs = HTTP.get("http://api.giphy.com/v1/gifs/search?api_key=#{Rails.application.credentials.giphy_api[:api_key]}&q=#{params[:search_term]}&limit=25&offset=0&rating=pg").parse["data"]
    render "index.json.jb"
   
  end
 
end