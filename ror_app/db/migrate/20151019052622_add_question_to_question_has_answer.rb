class AddQuestionToQuestionHasAnswer < ActiveRecord::Migration
  def change
    add_column :question_has_answers, :question_id, :integer
    add_column :question_has_answers, :answer_id, :integer
  end
end
