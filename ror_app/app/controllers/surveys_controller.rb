class SurveysController < ApplicationController

	def index
		@surveys = Survey.all()
	end

	def summary
		@survey = Survey.find(params[:survey_id])

		@correctly_guessed = UserGuessesNationality.joins('INNER JOIN user_answers_surveys ON (user_guesses_nationalities.user_answers_survey_id=user_answers_surveys.id)').joins('INNER JOIN users ON (user_answers_surveys.user_id = users.id)').where('user_guesses_nationalities.nationality_id = users.nationality_id').count()/UserGuessesNationality.all().count().to_f*100.0
		@incorrectly_guessed = 100.0 - @correctly_guessed

		# continent-wise
		@correctly_guessed_continent = UserGuessesNationality.joins('INNER JOIN user_answers_surveys ON (user_guesses_nationalities.user_answers_survey_id=user_answers_surveys.id)').joins('INNER JOIN users ON (user_answers_surveys.user_id = users.id)').joins('INNER JOIN nationalities AS nat1 ON (users.nationality_id=nat1.id)').joins('INNER JOIN nationalities AS nat2 ON (user_guesses_nationalities.nationality_id=nat2.id)').where('nat1.continent_id = nat2.continent_id').count()/UserGuessesNationality.all().count().to_f*100.0
		@incorrectly_guessed_continent = 100.0 - @correctly_guessed_continent
		
	end
end
