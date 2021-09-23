class Location < ApplicationRecord
    belongs_to :categorie
    has_many :bookings
    has_one_attached :picture
    belongs_to :user
    has_many :users, through:  :bookings
end
