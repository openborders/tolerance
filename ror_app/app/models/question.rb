class Question < ActiveRecord::Base
	belongs_to :situation
	has_many :answers
end
