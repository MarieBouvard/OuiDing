# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
    location = $('#booking_location_id').html()
    $('#booking_categorie_id').change ->
        categorie = $('#booking_categorie_id :selected').text()
        options = $(location).filter("optgroup[label='#{categorie}']").html()
        if options 
            $('#booking_location_id').html(options)
            $('#booking_location_id').parent().show()
        else 
            $('#booking_location_id').empty()
            $('#booking_location_id').parent().hide()