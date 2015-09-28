class AddSessionIdToUserAnswersSurveys < ActiveRecord::Migration
  def change
    add_column :user_answers_surveys, :session_id, :string
  end
end
