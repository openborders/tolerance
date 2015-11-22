class Nationality < ActiveRecord::Base
	belongs_to :continent
	has_many :users
	has_many :user_guesses_nationalities
end
