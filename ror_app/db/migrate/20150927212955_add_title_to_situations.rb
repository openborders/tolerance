class AddTitleToSituations < ActiveRecord::Migration
  def change
    add_column :situations, :title, :string
  end
end
