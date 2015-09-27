class CreateUserGaveAnswers < ActiveRecord::Migration
  def change
    create_table :user_gave_answers do |t|

      t.timestamps
    end
  end
end
