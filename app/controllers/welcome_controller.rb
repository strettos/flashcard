class WelcomeController < ApplicationController

  def index
    @card = Card.for_review(Date.today, current_user.id).first
  end
end
