class WelcomeController < ApplicationController
  def index
    @card = Card.get_review(Date.today).first
  end
end
