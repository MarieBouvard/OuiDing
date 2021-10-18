
Categorie.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE categories_id_seq RESTART WITH 1")

Location.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE locations_id_seq RESTART WITH 1")

Booking.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE bookings_id_seq RESTART WITH 1")

User.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE users_id_seq RESTART WITH 1")

