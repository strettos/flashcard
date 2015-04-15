class WelcomeController < ApplicationController
  skip_before_filter :require_login, except: [:index]
  
  def index
    @card = Card.for_review(Date.today, current_user.id).first
  end
end
