class Answer < ActiveRecord::Base
	has_many :question_has_answers
	has_many :questions, through: :question_has_answers
end
