class CreateChildCareVouchers < ActiveRecord::Migration
  def change
    create_table :child_care_vouchers do |t|
      t.integer :ccdf_dependent_no
      t.decimal :cccdf_gross_income
      t.integer :ccdf_eligible_children

      t.timestamps

    end
  end
end
