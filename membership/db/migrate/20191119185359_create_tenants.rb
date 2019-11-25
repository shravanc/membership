class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|
      t.string :title
      t.string :subdomain

      t.timestamps
    end
  end
end
