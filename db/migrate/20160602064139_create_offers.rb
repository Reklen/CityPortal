class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.string :image
      t.date :offer_start
      t.date :offer_end
      t.boolean :offer_type
      t.text :description
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
