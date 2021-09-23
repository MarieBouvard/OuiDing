class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  

  def index
    if params[:user_id] && @user = User.find_by(id: params[:user_id])
      @locations = @user.locations
    else
      @locations = Location.all
    end
  end

  def show
  end

  def new
    @location = Location.new
    @categorie = Categorie.all
  end 

  def create
    @location = Location.new(post_params)
    @location.user = current_user
    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: "La location a été rajoutée avec succés"}
        format.json { render :show, status: :created, location: @location } 
    else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity}
      end
    end
  end


  def edit
    @location = Location.find(params[:id])
  end


    def update
      respond_to do |format|
        if @location.update(post_params)
          format.html { redirect_to @location, notice: "Location was successfully updated." }
          format.json { render :show, status: :ok, location: @location }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @location.errors, status: :unprocessable_entity }
        end
      end
    end


  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

  def correct_user
    @location = Location.find(params[:id])
    unless current_user == @location.user
      redirect_to(@location, notice: "Vous ne pouvez pas réaliser cette action")
    end
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def post_params
    params.require(:location).permit(:name, :address, :zip_code, :city, :rooms, :supercify, :price, :picture, :description, :categorie_id, :user_id)
  end
end
