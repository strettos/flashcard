
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

end