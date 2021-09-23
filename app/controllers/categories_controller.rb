class CategoriesController < ApplicationController
  def index
    @categories = Categorie.all
  end

  def show
    @categorie = Categorie.find(params[:id])
    @locations = Location.find_by_categorie(@categorie)
  end

  def new
  end

private

# Only allow a list of trusted parameters through.
def categories_params
  params.require(:categorie).permit(:name, :picture)
end

end
