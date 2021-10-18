class LocationsController < ApplicationController
before_action :set_location, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, except: [:show, :index]
  

  def index
    @locations = Location.search(params[:search])
  end
  

  def show
  end

  def new
    @location = Location.new
    @categorie = Categorie.all
  end 


  def create
    @location = Location.new(post_params)
    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: "La location a été ajoutée avec succés"}
        format.json { render :show, status: :created, location: @location } 
    else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity}
      end
    end
  end


  def edit
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
    @location.destroy
    redirect_to locations_path
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def post_params
    params.require(:location).permit(:name, :address, :zip_code, :city, :rooms, :superficy, :price, :picture, :description, :categorie_id)
  end
end
