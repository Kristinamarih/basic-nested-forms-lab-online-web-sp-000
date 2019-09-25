class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'recipe_1')
    @recipe.ingredients.build(name: 'recipe_2')
  end

  def create
  end

  private

  def recipe_params
    params.require(:recipe).permit(
    :title,
    ingredients: [
      :name,
      :quantity
    ]
    )
  end
end
