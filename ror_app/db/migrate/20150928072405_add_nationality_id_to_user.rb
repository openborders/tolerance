class AddNationalityIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :nationality_id, :integer
  end
end
