require 'rails_helper'

describe Card do

  context '#check_answer' do
    it 'can check wrong translation' do
      card = Card.new(original_text: "hause", translated_text: "дом")
      expect(card.check_answer("врач")).to be false
    end

    it 'can check right translation' do
      card = Card.new(original_text: "hause", translated_text: "дом")
      expect(card.check_answer("дом")).to be true
    end

    it 'updates review date when correct answer' do
      card = Card.new(original_text: "hause", translated_text: "дом")
      card.check_answer("дом")
      expect(card.review_date).to eq(Date.today + 3.days)
    end
  end
  
  context '#change_review_date' do
    it 'updates review date correctly' do
      card = Card.new(original_text: "hause", translated_text: "дом", review_date: "2014.01.01")
      card.set_review_date
      expect(card.review_date).to eq(Date.today + 3.days)
    end
  end
end