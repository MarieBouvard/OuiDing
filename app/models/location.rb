class Location < ApplicationRecord
    belongs_to :categorie
    has_many :bookings
    has_one_attached :picture
    has_many :users
    paginates_per 20


    def self.search(search)
        if search 
            where(["name LIKE ?","%#{search}%"])
        else 
            all
        end
    end
end
