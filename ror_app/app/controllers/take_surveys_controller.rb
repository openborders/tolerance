class TakeSurveysController < ApplicationController
	include Wicked::Wizard

	steps :own_nationality, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :guess_nationality, :summary

	def show
		@survey = Survey.find(params[:survey_id])
		session.delete(:asked_questions)
		session.delete(:user_answers_survey)
		session.delete(:situation)
		session.delete(:question)
		session.delete(:asked_questions)
	    render_wizard
	end

	def update
		@survey = Survey.find(params[:survey_id])

		@questionNumber = wizard_steps.index(step)

		# check for values of last question
		if session.has_key?(:user_answers_survey)
			@user_answers_survey = UserAnswersSurvey.find(session[:user_answers_survey])

	  		@question  = Question.find(session[:question])
	  		@situation  = Situation.find(session[:situation])

			if params.has_key?(:answer)
		  		AnsweredQuestion.create(:question_id => @question.id, :answer_id => params[:answer], :user_answers_survey_id => @user_answers_survey.id)
			end
		end

	    case step
	    when :own_nationality
	  	when :q1
	  		@user = User.create(:nationality => Nationality.find(params[:user][:nationality_id]))
	  		@user_answers_survey = UserAnswersSurvey.create(:user_id => @user.id, :survey_id => @survey.id)
	  		session[:user_answers_survey] = @user_answers_survey.id
	  		session[:asked_questions] = []
	  	when :q2
			# if already completed, we skip to the summary
			if @user_answers_survey.completed
				jump_to(:own_nationality)
			end
	  	when :q3
			# if already completed, we skip to the summary
			if @user_answers_survey.completed
				jump_to(:own_nationality)
			end
	  	when :q4
			# if already completed, we skip to the summary
			if @user_answers_survey.completed
				jump_to(:own_nationality)
			end
	  	when :q5
			# if already completed, we skip to the summary
			if @user_answers_survey.completed
				jump_to(:own_nationality)
			end
	  	when :q6
			# if already completed, we skip to the summary
			if @user_answers_survey.completed
				jump_to(:own_nationality)
			end
	  	when :q7
			# if already completed, we skip to the summary
			if @user_answers_survey.completed
				jump_to(:own_nationality)
			end
	  	when :q8
			# if already completed, we skip to the summary
			if @user_answers_survey.completed
				jump_to(:own_nationality)
			end
	  	when :q9
			# if already completed, we skip to the summary
			if @user_answers_survey.completed
				jump_to(:own_nationality)
			end
	  	when :q10
			# if already completed, we skip to the summary
			if @user_answers_survey.completed
				jump_to(:own_nationality)
			end
	  	when :guess_nationality
			# if already completed, we skip to the summary
			if @user_answers_survey.completed
				jump_to(:own_nationality)
			end
	  		@user_answers_survey.update_attribute(:completed, true)
	  		# take all answered questioneers of other people
	  		offset = rand(UserAnswersSurvey.where(:completed => true).where.not(:id => @user_answers_survey.id).count)
	  		@other_survey = UserAnswersSurvey.where(:completed => true).where.not(:id => @user_answers_survey.id).offset(offset).first
	  		if @other_survey
				session[:other_survey] = @other_survey.id
			end
			# we do not need another situation / question
			return render_wizard
		when :summary
			# we only submit the guess if the user did not guess before
			@bla = UserGuessesNationality.where(
				user_id: UserAnswersSurvey.find(session[:user_answers_survey]).user.id, 
				user_answers_survey_id: session[:user_answers_survey], 
				nationality_id: params[:user][:nationality_id])
			if @bla.count() == 0
				UserGuessesNationality.create(
					user_id: UserAnswersSurvey.find(session[:user_answers_survey]).user.id,
					user_answers_survey_id: session[:user_answers_survey],
					nationality_id: params[:user][:nationality_id])
			end
			@your_guess = params[:user][:nationality_id].to_i
			@true_nationality = UserAnswersSurvey.find(session[:other_survey]).user.nationality_id
			@you_guessed_correctly = @your_guess == @true_nationality
			@correctly_guessed = UserGuessesNationality.joins('INNER JOIN user_answers_surveys ON (user_guesses_nationalities.user_answers_survey_id=user_answers_surveys.id)').joins('INNER JOIN users ON (user_answers_surveys.user_id = users.id)').where('user_guesses_nationalities.nationality_id = users.nationality_id').count()/UserGuessesNationality.all().count().to_f*100.0
			@incorrectly_guessed = 100.0 - @correctly_guessed

			# continent-wise
			@correctly_guessed_continent = UserGuessesNationality.joins('INNER JOIN user_answers_surveys ON (user_guesses_nationalities.user_answers_survey_id=user_answers_surveys.id)').joins('INNER JOIN users ON (user_answers_surveys.user_id = users.id)').joins('INNER JOIN nationalities AS nat1 ON (users.nationality_id=nat1.id)').joins('INNER JOIN nationalities AS nat2 ON (user_guesses_nationalities.nationality_id=nat2.id)').where('nat1.continent_id = nat2.continent_id').count()/UserGuessesNationality.all().count().to_f*100.0
			@incorrectly_guessed_continent = 100.0 - @correctly_guessed_continent
			@you_guessed_correctly_continent = Nationality.find(@your_guess).continent_id == Nationality.find(@true_nationality).continent_id
			

			return render_wizard
	    end

  		# get the next random situation / question
		@situation, @question = self.get_next_random_situation_and_question(@survey, session[:asked_questions])
		session[:situation] = @situation.id
  		session[:question] = @question.id
  		session[:asked_questions] = session[:asked_questions].append(@question.id)


		render_wizard
	end

	def get_next_random_situation_and_question(survey, exclude_questions=[])
		sit = survey.get_random_situation(exclude_questions=exclude_questions)
		return [sit, sit.get_random_question()]
	end
end
