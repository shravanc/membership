class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :title, default: ""
      t.string :description, default: ""
      t.integer :subscription_id

      t.timestamps
    end
  end
end
