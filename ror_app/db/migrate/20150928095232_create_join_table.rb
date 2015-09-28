class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :user_answers_surveys, :answered_questions do |t|
      # t.index [:user_answers_survey_id, :answered_question_id]
      # t.index [:answered_question_id, :user_answers_survey_id]
    end
  end
end
