class Survey < ActiveRecord::Base
	has_many :survey_has_situation
	has_many :situations, through: :survey_has_situation
	has_many :user_answers_surveys

	def get_random_situation(exclude_questions=[])
		@hassits = self.situations.joins(:questions).where.not(questions: {:id => exclude_questions})
		offset = rand(@hassits.count)
		return @hassits.offset(offset).first
	end
end
