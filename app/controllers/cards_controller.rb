class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def  create
    render plain: params[:card].inspect
    #@card = Card.new(card_params)

    #@card.save
    #redirect_to @card
  end

 # private
 #   def card_params
 #     params.require(:card).permit(:original_text, :translated_text, :review_date)
 #   end
end
