class CreateWics < ActiveRecord::Migration
  def change
    create_table :wics do |t|
      t.integer :wic_household_size
      t.decimal :wic_gross_income

      t.timestamps

    end
  end
end
