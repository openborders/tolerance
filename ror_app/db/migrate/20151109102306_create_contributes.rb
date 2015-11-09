class CreateContributes < ActiveRecord::Migration
  def change
    create_table :contributes do |t|

      t.timestamps
    end
  end
end
