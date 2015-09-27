class AddSituationIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :situation_id, :integer
  end
end
