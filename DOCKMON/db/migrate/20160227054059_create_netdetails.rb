class CreateNetdetails < ActiveRecord::Migration
  def change
    create_table :netdetails do |t|

	t.timestamps null: false
    end
  end
end
