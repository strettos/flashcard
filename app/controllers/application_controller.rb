class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def index
    @cards = Card.get_review(Date.today)
  end
  
  def get_review_cards
    @cards = Card.get_review(Date.today)
  end
end
