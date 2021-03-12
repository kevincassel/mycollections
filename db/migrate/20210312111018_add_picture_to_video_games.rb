class AddPictureToVideoGames < ActiveRecord::Migration[6.0]
  def change
    add_column :video_games, :picture, :string
  end
end
