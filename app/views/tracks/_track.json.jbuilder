json.extract! track, :id, :title, :release, :description, :download, :embed, :album, :artist, :created_at, :updated_at
json.url track_url(track, format: :json)
