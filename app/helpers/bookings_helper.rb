module BookingsHelper

      #Only correct user can perform edit/update/destroy
  def correct_user
    @booking = Booking.find(params[:id])
    unless current_user == @booking.user
      redirect_to(@booking, notice: "Vous ne pouvez pas effectuer cette action")
    end
  end

end
