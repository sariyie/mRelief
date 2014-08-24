class CreateFamilyNutritions < ActiveRecord::Migration
  def change
    create_table :family_nutritions do |t|
      t.decimal :nutrition_gross_income
      t.integer :nutrition_household_size

      t.timestamps

    end
  end
end
