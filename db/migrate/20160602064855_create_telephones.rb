class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.integer :phone
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
