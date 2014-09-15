class Card < ActiveRecord::Base
	validates :original_text, presence: true, length: { minimum: 2 } 
	validates :translated_text, presence: true, length: { minimum: 2 } 
end
