class CreateJobVacancies < ActiveRecord::Migration
  def change
    create_table :job_vacancies do |t|
      t.string :name
      t.integer :company_id
      t.integer :category_id
      t.text :description
      t.string :email
      t.integer :phone
      t.string :contact_name
      t.boolean :state

      t.timestamps null: false
    end
  end
end
