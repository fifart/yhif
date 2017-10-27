class Album < ApplicationRecord
    has_many :tracks
    
    validates :title, presence: true
    validates :release, presence: true 
end
