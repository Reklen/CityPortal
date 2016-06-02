class CreateElectronicMails < ActiveRecord::Migration
  def change
    create_table :electronic_mails do |t|
      t.string :email
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
