class UserGuessesNationality < ActiveRecord::Base
	belongs_to :user
	belongs_to :user_answers_survey
	belongs_to :nationality
end
