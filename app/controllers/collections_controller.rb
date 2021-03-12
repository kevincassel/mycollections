class CollectionsController < ApplicationController

  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def create
    @collection = Collection.new
    @collection.video_game = VideoGame.find(params[:video_game])
    @collection.user = current_user
    @collection.shop = Shop.first
    redirect_to video_games_path(query: params[:query]) if @collection.save
  end

  def destroy
    @collection = Collection.find(params[:id])
    # @collection.video_game = VideoGame.find(params[:video_game_id])
    @collection.destroy
    redirect_to collections_path
  end

  private

  def collection_params
    params.require(:collection).permit(:video_game)
  end

end
