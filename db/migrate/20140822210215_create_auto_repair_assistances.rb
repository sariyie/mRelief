class CreateAutoRepairAssistances < ActiveRecord::Migration
  def change
    create_table :auto_repair_assistances do |t|
      t.integer :auto_household_size
      t.decimal :auto_gross_income

      t.timestamps

    end
  end
end
