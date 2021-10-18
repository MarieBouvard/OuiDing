class PagesController < ApplicationController
include PagesHelper
before_action :correct_account, only: [:edit, :update, :destroy]

  def index
    @locations = Location.limit(8)
  end

  def about
    @user = current_user
    @locations = @user.locations
  end
 
end
