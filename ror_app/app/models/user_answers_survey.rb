class UserAnswersSurvey < ActiveRecord::Base
	has_many :answered_questions
	belongs_to :user
	belongs_to :survey
	belongs_to :user_guesses_nationality
end
