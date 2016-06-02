class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
