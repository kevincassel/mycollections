class VideoGamesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = " \
        title ILIKE :query \
        OR platform ILIKE :query \
      "
      @videogames = VideoGame.where(sql_query, query: "%#{params[:query]}%")
    else
      @videogames = VideoGame.all
    end
  end

  def show
    @video_game = VideoGame.find(params[:id])
    @collection = Collection.new
  end

end
