class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :image
      t.text :description_short
      t.text :description_long
      t.string :web_address

      t.timestamps null: false
    end
  end
end
