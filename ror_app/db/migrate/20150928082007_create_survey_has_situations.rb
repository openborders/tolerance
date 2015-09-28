class CreateSurveyHasSituations < ActiveRecord::Migration
  def change
    create_table :survey_has_situations do |t|
      t.integer :survey_id
      t.integer :situation_id

      t.timestamps
    end
  end
end
