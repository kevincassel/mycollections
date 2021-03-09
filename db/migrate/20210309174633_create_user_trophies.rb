class CreateUserTrophies < ActiveRecord::Migration[6.0]
  def change
    create_table :user_trophies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :trophy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
