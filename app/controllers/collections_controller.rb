class CollectionsController < ApplicationController

  def create
    @collection = Collection.new(collection_params)
    @collection.user = current_user
      if @collection.save
        redirect_to @collection
      else
        render :new
      end
  end

  private

  def stone_params
    params.require(:collection).permit(:title, :platform, :editor, :description)
  end

end
