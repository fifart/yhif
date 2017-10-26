class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.date :release
      t.text :description
      t.string :download
      t.text :embed
      t.string :album
      t.string :artist

      t.timestamps
    end
  end
end
