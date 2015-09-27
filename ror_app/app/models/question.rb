class Question < ActiveRecord::Base
	has_many :surveys
	belongs_to :situation
	has_many :answers
end
