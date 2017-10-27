class RemoveAlbumFromTrack < ActiveRecord::Migration[5.1]
  def change
    remove_column :tracks, :album, :integer
  end
end
