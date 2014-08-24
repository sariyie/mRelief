class CreateDentals < ActiveRecord::Migration
  def change
    create_table :dentals do |t|
      t.decimal :dental_gross_income
      t.integer :dental_household_size

      t.timestamps

    end
  end
end
