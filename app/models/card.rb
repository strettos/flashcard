class Card < ActiveRecord::Base
  validates :original_text, presence: true, length: { minimum: 2 } 
  validates :translated_text, presence: true, length: { minimum: 2 } 

  scope :for_review, -> (date) { where("review_date <= ?", date).order('RANDOM()') }

  def check_answer(answer)
    if answer == translated_text
      set_review_date
    else
      return false
    end
  end

  def set_review_date
    update(review_date: Date.today + 3.days)
  end
end
