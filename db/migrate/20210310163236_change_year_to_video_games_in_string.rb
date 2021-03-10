class ChangeYearToVideoGamesInString < ActiveRecord::Migration[6.0]
  def change
    change_column :video_games, :year, :string
  end
end
