class AddCompletedToUserAnswersSurveys < ActiveRecord::Migration
  def change
    add_column :user_answers_surveys, :completed, :boolean
  end
end
