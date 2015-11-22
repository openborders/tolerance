class User < ActiveRecord::Base
	belongs_to :nationality
	has_many :user_answers_surveys
	has_many :user_guesses_nationalities
end
