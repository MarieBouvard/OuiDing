class Search < ApplicationRecord

    def search_location 
        locations = Location.all

        locations = locations.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?
        locations = locations.where(["categorie LIKE ?","%#{categorie}%"]) if categorie.present?
        locations = locations.where(["rooms LIKE ?","%#{rooms}%"]) if rooms.present?
        locations = locations.where(["superficy LIKE ?","%#{superficy}%"]) if superficy.present?
        locations = locations.where(["price >= ?", min_price]) if min_price.present?
        locations = locations.where(["price LIKE ?", max_price]) if max_price.present?

        return locations
    end
end
