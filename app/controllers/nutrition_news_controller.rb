class NutritionNewsController < ApplicationController
  def index
    @results = Google::Search::News.new(query: 'Nutrition')
  end
end
