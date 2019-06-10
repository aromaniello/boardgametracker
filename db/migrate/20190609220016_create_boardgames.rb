class CreateBoardgames < ActiveRecord::Migration[5.2]
  def change
    create_table :boardgames do |t|
      t.belongs_to :user

      t.string :name
      t.integer :year_published
      t.string  :image_url
      t.string  :thumbnail_url
      t.text    :description
      t.integer :min_players
      t.integer :max_players
      t.integer :min_playing_time
      t.integer :max_playing_time
      t.integer :min_age

      t.timestamps
    end
  end
end
