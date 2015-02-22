class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.date :founded_at

      t.timestamps
    end
  end
end
