class CardsController < ApplicationController
  def show_all
    @cards = Card.all;
  end
end
