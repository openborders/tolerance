class SituationHasQuestion < ActiveRecord::Base
	belongs_to :situation
	belongs_to :question
end
