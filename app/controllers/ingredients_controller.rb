class IngredientsController < ApplicationController
  before_action :find_cocktail, only: [ :index, :show ]
  def index # GET /ingredients
    @ingredients = Ingredient.all
  end
  def show # GET /ingredients/:id
    @ingredient = Ingredient.find(params[:id])
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
   def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end


