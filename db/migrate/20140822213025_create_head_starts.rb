class CreateHeadStarts < ActiveRecord::Migration
  def change
    create_table :head_starts do |t|
      t.integer :hs_dependent_no
      t.decimal :hs_gross_income

      t.timestamps

    end
  end
end
