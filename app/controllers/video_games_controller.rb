class VideoGamesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @video_games = Video_game.all
  end

  def show
    @video_game = Video_game.find(params[:id])
  end



end
