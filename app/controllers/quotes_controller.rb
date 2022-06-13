class QuotesController < ApplicationController
  # GET /quote or /quote.json or /quote.xml
  def show
    @quote = Quote.find_random
  end
end
