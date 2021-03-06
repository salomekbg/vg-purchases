class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :platform_id
      t.integer :source_id
      t.string :status
      t.string :personal_rating
      t.string :hours_played
      t.string :notes

      t.timestamps
    end
  end
end
