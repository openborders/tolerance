class CreateUniversalAnswers < ActiveRecord::Migration
  def change
    create_table :universal_answers do |t|

      t.timestamps
    end
  end
end
