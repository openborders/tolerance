class Situation < ActiveRecord::Base
	has_many :questions
	has_many :survey_has_situation

	def get_random_question
		# TODO: only select questions with at least one answer
		#@hasquest = SituationHasQuestion.select(:question_id).where(:question_id => self.questions)
		@hasquest = self.questions
		offset = rand(@hasquest.count)
		return @hasquest.offset(offset).first
	end
end
