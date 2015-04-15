class Card < ActiveRecord::Base
  belongs_to :user
  

  validates :original_text, :translated_text, presence: true, length: { minimum: 2 } 
  validates :user_id, presence: true

  scope :for_review, -> (date, id) { where("review_date <= ? AND user_id = ?", date, id).order('RANDOM()') }

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
