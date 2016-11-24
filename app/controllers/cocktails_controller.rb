class CocktailsController < ApplicationController
  def index # GET /cocktails
    @cocktails = Cocktail.all
  end
  def show # GET /cocktails/:id
    @cocktail = Cocktail.find(params[:id])
  end
  def new # GET /cocktails/new
    @cocktail = Cocktail.new
  end
  def create # POST /cocktails
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end
  def edit # GET /cocktails/:id/edit
    @cocktail = Cocktail.find(params[:id])
  end
  def update # PATCH /cocktails/:id
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.update(cocktail_params)
      redirect_to cocktails_path
    else
      render :edit
    end
  end
  def destroy # DELETE /cocktails/:id
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
