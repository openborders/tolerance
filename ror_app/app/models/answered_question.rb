class AnsweredQuestion < ActiveRecord::Base
	belongs_to :user_answers_survey
	belongs_to :question
	belongs_to :answer
end
