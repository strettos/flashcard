class Card < ActiveRecord::Base
  validates :original_text, presence: true, length: { minimum: 2 } 
  validates :translated_text, presence: true, length: { minimum: 2 } 

  scope :get_review, ->(date) { where("review_date <= ?", date).order('RANDOM()') }

  def check_answer(answer)
    answer == translated_text
  end

  def set_review_date(card)
    card.update(review_date: Date.today + 3)
  end
end
