module Wicked::Controller::Concerns::RenderRedirect

	def render_step(the_step, options = {})
		if the_step.nil? || the_step.to_s == Wicked::FINISH_STEP
		  redirect_to_finish_wizard options
		elsif ['q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7', 'q8', 'q9', 'q10'].include? the_step.to_s
		  render 'question', options
		else
		  render the_step, options
		end
	end
end