class CreateAllKids < ActiveRecord::Migration
  def change
    create_table :all_kids do |t|
      t.integer :kids_household_size
      t.decimal :assist_gross_income
      t.decimal :share_gross_income
      t.decimal :premium_1_gross_income
      t.decimal :premium_2_gross_income

      t.timestamps

    end
  end
end
