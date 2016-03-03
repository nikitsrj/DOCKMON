class CreateNetDetails < ActiveRecord::Migration
  def change
    create_table :net_details do |t|

      t.timestamps null: false
    end
  end
end
