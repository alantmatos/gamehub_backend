class Console < ApplicationRecord

    has_many :console_collections 
    has_many :users, through: :console_collections

end
