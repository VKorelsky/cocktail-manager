class DosesController < ApplicationController

  def create

  end

  def destroy

  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
