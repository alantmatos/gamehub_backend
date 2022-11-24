class User < ApplicationRecord
    
    has_many :game_collections
    has_many :games, through: :game_collections

    has_many :console_collections
    has_many :consoles, through: :console_collections

end
