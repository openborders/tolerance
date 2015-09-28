class UserAnswersSurvey < ActiveRecord::Base
	has_many :answered_questions
	belongs_to :user
	belongs_to :survey
end
