class CreateHousingAssistances < ActiveRecord::Migration
  def change
    create_table :housing_assistances do |t|
      t.integer :housing_dependent_no
      t.decimal :housing_gross_income

      t.timestamps

    end
  end
end
