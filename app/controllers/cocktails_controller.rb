class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    raise
    @cocktail = Cocktail.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
