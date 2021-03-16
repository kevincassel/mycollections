class CollectionsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = " \
        title ILIKE :query \
        OR platform ILIKE :query \
      "
      @collections = Collection.joins(:video_game).where(sql_query, query: "%#{params[:query]}%")
    else
      @collections = Collection.all
    end
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
    if params[:video_game] != nil
      @collection.video_game = VideoGame.find(params[:video_game])
      @collection.user = current_user
      @collection.shop = Shop.first
      redirect_to video_games_path(query: params[:query]) if @collection.save
    else
    #cas 2 creation via l'api
    # si params contient api_name
    # si le jeu vidéo existe avec le nom dans params api_name dans la db
    # alors on crée la collection avec le jeu vidéo et le user
    # sinon appeler l'api et récupérer les infos et les mettres dans un hash
    # créer un nouveau jeu vidéo
    # créer une collection avec ce jeu.
      game_title = params["game"]["name"] # nom du jeu recherché
      game = games.select { |game| game.title.end_with?(game_title) }
      if game = []
        game_info = {title: params["game"]["name"], platform: params["game"]["platforms"].first["name"], category: params["game"]["genres"].first["name"], description: params["game"]["summary"], picture: "https:#{params["game"]["cover"]["url"]}", year: params["game"]["first_release_date"] }
        game_new = VideoGame.create(game_info)
        @collection.video_game = VideoGame.find(game_new.id)
        @collection.user = current_user
        @collection.shop = Shop.first
        redirect_to new_collection_path(query: params[:query]) if @collection.save
      else
        @collection.video_game = VideoGame.find(game.first.id)
        @collection.user = current_user
        @collection.shop = Shop.first
        redirect_to new_collection_path(query: params[:query]) if @collection.save
      end
    end
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
