class CreateQuestionHasAnswers < ActiveRecord::Migration
  def change
    create_table :question_has_answers do |t|

      t.timestamps
    end
  end
end
