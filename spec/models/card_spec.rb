
require 'rails_helper'

describe Card do

 it 'can translate' do
  card = Card.new(original_text: "hause", translated_text: "дом")
  expect(card.check_answer("врач")).to be false
 end

 it 'correct translate' do
  card = Card.new(original_text: "hause", translated_text: "дом")
  expect(card.check_answer("дом")).to be true
 end

 it 'can update' do
  card = Card.new(original_text: "hause", translated_text: "дом", review_date: "2014.01.01")
  card.set_review_date
  expect(card.review_date).to eq(Date.today + 3.days)
 end

end