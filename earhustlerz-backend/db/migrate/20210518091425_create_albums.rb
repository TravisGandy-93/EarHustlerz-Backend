class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :cover
      t.string :artist
      t.string :genre
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
