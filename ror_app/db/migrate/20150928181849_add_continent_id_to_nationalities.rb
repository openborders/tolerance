class AddContinentIdToNationalities < ActiveRecord::Migration
  def change
    add_column :nationalities, :continent_id, :integer
  end
end
