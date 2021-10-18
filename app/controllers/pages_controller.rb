class PagesController < ApplicationController
  def index
    @locations = Location.limit(8)
  end

  def show
  end 
end
