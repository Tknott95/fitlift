class NewsController < ApplicationController
  def index
    @results = Google::Search::News.new(query: 'fitness')
  end
end
