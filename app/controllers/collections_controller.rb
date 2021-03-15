class CollectionsController < ApplicationController

  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
    @games_api = VideoGame.searchagame(params[:query])
  end


  def create
    #cas classique d'un user qui ajoute un jeu via la db existante
    @collection = Collection.new
    games = VideoGame.all
    raise
    @collection.video_game = VideoGame.find(params[:video_game])
    @collection.user = current_user
    @collection.shop = Shop.first
    redirect_to video_games_path(query: params[:query]) if @collection.save

    #cas 2 creation via l'api
    # si params contient api_name
    # si le jeu vidéo existe avec le nom dans params api_name
    # alors on crée la collection avec le jeu vidéo et le user
    # sinon appeler l'api et récupérer les infos et les mettres dans un hash
    # créer un nouveau jeu vidéo
    # créer une collection avec ce jeu.
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
