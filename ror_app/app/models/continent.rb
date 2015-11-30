class Continent < ActiveRecord::Base
	has_many :nationalities
	
	def translated_name
		I18n.t(name)
	end
end
