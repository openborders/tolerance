class Question < ActiveRecord::Base
	belongs_to :situation
	has_many :question_has_answers
	has_many :answers, through: :question_has_answers

	def answers
		res = super
		#logger.info(UniversalAnswer.count())
		res += UniversalAnswer.all()
		return res
	end
end
