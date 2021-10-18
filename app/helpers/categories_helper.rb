module CategoriesHelper

    private 

    def only_admin_for_categories_updates
        if !current_user.admin || current_user = nil
            return redirect_to root_path
        end

    end 


end
