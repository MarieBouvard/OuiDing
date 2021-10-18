class CategoriesController < ApplicationController
include CategoriesHelper
  before_action :set_categorie, only: [:show, :edit, :update, :destroy]
  before_action :only_admin_for_categories_updates, only: [:edit, :update, :new, :create, :destroy, :index]

  def index
    @categories = Categorie.all
  end

  def show
    @categorie = Categorie.find(params[:id])
    @locations = @categorie.locations
  end

  def new
    @categorie = Categorie.new
  end

  def create
    @categorie = Categorie.new(categories_params)
      if @categorie.save
        redirect_to categories_path
      else
        render :new
      end
    end


  def edit
    @categorie = Categorie.find(params[:id])
  end

  def update
    respond_to do |format|
      if @categorie.update(categories_params)
        format.html { redirect_to @categorie, notice: "Category was successfully updated." }
        format.json { render :show, status: :ok, location: @categorie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categorie.errors, status: :unprocessable_entity }
      end
    end
  end


def destroy
  @categorie = Categorie.find(params[:id])
  @categorie.destroy
  redirect_to categories_path
end

private

def set_categorie
  @categorie = Categorie.find(params[:id])
end

# Only allow a list of trusted parameters through.
def categories_params
  params.require(:categorie).permit(:name, :picture)
end

end
