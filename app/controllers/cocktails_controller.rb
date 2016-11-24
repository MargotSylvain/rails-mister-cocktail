class CocktailsController < ApplicationController
def index # GET /cocktails
  @cocktails = Cocktail.all
end
def show # GET /cocktails/:id
  # @cocktail = cocktail.find(params[:id])
end
def new # GET /cocktails/new
end
def create # POST /cocktails
end
def edit # GET /cocktails/:id/edit
end
def update # PATCH /cocktails/:id
end
def destroy # DELETE /cocktails/:id
end
