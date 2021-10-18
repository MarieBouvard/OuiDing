module PagesHelper
    private
    def correct_account
        @location = Location.find(params[:id])
        unless current_user == @location.user
            redirect_to(@location, notice: "You cannot perform this action")
        end
    end
end
