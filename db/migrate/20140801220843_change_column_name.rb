class ChangeColumnName < ActiveRecord::Migration
  def change
    add_column :child_care_vouchers, :ccdf_gross_income, :decimal
    remove_column :child_care_vouchers, :cccdf_gross_income
  end
end
