class CreateMedicaids < ActiveRecord::Migration
  def change
    create_table :medicaids do |t|
      t.integer :medicaid_household_size
      t.decimal :medicaid_gross_income

      t.timestamps

    end
  end
end
