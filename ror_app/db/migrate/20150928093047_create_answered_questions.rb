class CreateAnsweredQuestions < ActiveRecord::Migration
  def change
    create_table :answered_questions do |t|
      t.integer :question_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
