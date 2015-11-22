class Continent < ActiveRecord::Base
	has_many :nationalities
end
