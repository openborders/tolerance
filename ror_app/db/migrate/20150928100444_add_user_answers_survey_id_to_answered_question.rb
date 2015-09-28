class AddUserAnswersSurveyIdToAnsweredQuestion < ActiveRecord::Migration
  def change
    add_column :answered_questions, :user_answers_survey_id, :integer
  end
end
