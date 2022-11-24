class Game < ApplicationRecord
    
    has_many :game_collections
    has_many :users, through: :game_collections

end
