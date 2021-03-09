class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.references :user, null: false, foreign_key: true
      t.references :video_game, null: false, foreign_key: true
      t.string :user_comment
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
