class QuestionHasAnswer < ActiveRecord::Base
	belongs_to :question
	belongs_to :answer
end
