class CreateVisions < ActiveRecord::Migration
  def change
    create_table :visions do |t|
      t.decimal :vision_gross_income
      t.integer :vision_household_size

      t.timestamps

    end
  end
end
