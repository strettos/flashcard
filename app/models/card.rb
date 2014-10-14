class Card < ActiveRecord::Base
  validates :original_text, presence: true, length: { minimum: 2 } 
  validates :translated_text, presence: true, length: { minimum: 2 } 

  scope :get_review, ->(date) { where("review_date <= ?", date).order('RANDOM()') }
end
