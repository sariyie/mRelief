class CreateEarlyHeadStarts < ActiveRecord::Migration
  def change
    create_table :early_head_starts do |t|
      t.integer :ehs_dependent_no
      t.decimal :ehs_gross_income

      t.timestamps

    end
  end
end
