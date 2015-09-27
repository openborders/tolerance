class AddTextToSituations < ActiveRecord::Migration
  def change
    add_column :situations, :text, :string
  end
end
