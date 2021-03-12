class VideoGamesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @video_games = VideoGame.searchagame
    @videogames = VideoGame.all
  end

  def show
    @video_game = VideoGame.find(params[:id])
  end

end
