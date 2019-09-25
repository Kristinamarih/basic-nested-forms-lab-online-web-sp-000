class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredients: 'recipe_1')
    @recipe.ingredients.build(ingredients: 'recipe_2')
  end

  def create
  end
end
