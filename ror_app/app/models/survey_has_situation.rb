class SurveyHasSituation < ActiveRecord::Base
	belongs_to :survey
	belongs_to :situation
end
