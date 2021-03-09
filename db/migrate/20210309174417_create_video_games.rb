class CreateVideoGames < ActiveRecord::Migration[6.0]
  def change
    create_table :video_games do |t|
      t.string :title
      t.string :platform
      t.date :year
      t.string :category
      t.string :editor
      t.text :description

      t.timestamps
    end
  end
end
