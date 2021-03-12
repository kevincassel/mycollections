class CollectionsController < ApplicationController

  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def create
    @collection = Collection.new
    @collection.video_game = VideoGame.find(params[:video_game_id])
    @collection.user = current_user
    # redirect_to @collection if @collection.save
  end

  def destroy
    @collection.video_game = VideoGame.find(params[:video_game_id])
    @collection.video_game.destroy
    redirect_to collections_path
  end

  private

  def collection_params
    params.require(:collection).permit(:video_game_id)
  end

end
