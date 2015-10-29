class AddQuestionToQuestionHasAnswer < ActiveRecord::Migration
  def change
    add_column :question_has_answers, :question_id, :integer
  end
end
