class CardsController < ApplicationController
  before_action :get_card, only: [:show, :edit, :update, :destroy, :review]

  def index
    @cards = current_user.cards.all
  end

  def new
    @card = Card.new
  end

  def  create
    @card = current_user.cards.create(card_params)

    if @card.save
      redirect_to @card
    else
      render :new
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @card.update(card_params)
      redirect_to @card
    else
      render :edit
    end
  end

  def destroy
    @card.destroy

    redirect_to cards_path
  end

  def review
    if @card.check_answer(params[:translated_text])
      flash[:error] = "Правильный ответ!"
    else
      flash[:error] = "Неправильный ответ"
    end
    redirect_to root_path
  end

  private
    def card_params
      params.require(:card).permit(:original_text, :translated_text, :review_date)
    end

    def get_card
      @card = Card.find(params[:id])
    end
end
