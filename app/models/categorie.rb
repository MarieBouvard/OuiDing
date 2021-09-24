class Categorie < ApplicationRecord
    has_many :locations, dependent: :delete_all
    has_one_attached :picture
   
end
