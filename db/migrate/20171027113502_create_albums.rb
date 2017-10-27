class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.date :release
      t.string :producer

      t.timestamps
    end
  end
end
