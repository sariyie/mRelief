class CreateSnapEligibilities < ActiveRecord::Migration
  def change
    create_table :snap_eligibilities do |t|
      t.integer :snap_dependent_no
      t.decimal :snap_gross_income
      t.integer :age

      t.timestamps

    end
  end
end
