module LocationsHelper
    private

    def require_login
        unless current_user != nil
            redirect_to new_user_session_path
        end
    end

    def require_permission_edit_location
        unless current_user == @location.user_id
          redirect_to root_path
          #Or do something else here
        end
      end

      def only_admin_for_location_updates
        if !current_user.admin || current_user = nil
            return redirect_to root_path
        end

    end

    
    
end
