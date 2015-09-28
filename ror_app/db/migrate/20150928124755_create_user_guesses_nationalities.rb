class CreateUserGuessesNationalities < ActiveRecord::Migration
  def change
    create_table :user_guesses_nationalities do |t|
      t.integer :user_id
      t.integer :user_answers_survey_id
      t.integer :nationality_id

      t.timestamps
    end
  end
end
