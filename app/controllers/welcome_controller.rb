class WelcomeController < ApplicationController
  def index
    @cards = Card.get_review(Date.today)
  end
end
