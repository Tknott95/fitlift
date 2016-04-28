class RecipesController < ApplicationController
  def index
    @search_term = params[:looking_for] || 'fruit'
    @recipes = Recipe.for(@search_term)
  end
end
