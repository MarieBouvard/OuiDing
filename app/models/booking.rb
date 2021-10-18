class Booking < ApplicationRecord
    belongs_to :user, inverse_of: :bookings
    belongs_to :location, inverse_of: :bookings
    validates_presence_of :start, :ends
    validate :no_past_booking
    validate :overlaps
    validate :end_date_after_start_date

    #bookings cannot be in the past for the start and end time
    def no_past_booking
        if start && (start < Time.current )
            errors.add(:Start, "La réservation ne peut pas se faire dans le passé")
    
        end
    end

    #Twice bookings impossible
    def overlaps
        bookings = Booking.where(location_id: id)
        bookings.each do |booking|
            if start < booking.ends && booking.start < ends
                errors.add(:overlaps, 'Déjà réservé à cette date')
            end
        end
    end
   

    private

    # End date must be after start date
    def end_date_after_start_date
        return if ends.blank? || start.blank?

         if ends < start
            errors.add(:ends, "must be after the start date")
        end
    end
     
end
