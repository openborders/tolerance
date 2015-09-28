class AddNameToNationalities < ActiveRecord::Migration
  def change
    add_column :nationalities, :name, :string
  end
end
