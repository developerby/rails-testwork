class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name, null: false
      t.integer :company_id, null: false
      t.date :hired_at

      t.timestamps
    end
    add_index :employees, :company_id
  end
end
