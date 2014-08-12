class CreateRentalAssistances < ActiveRecord::Migration
  def change
    create_table :rental_assistances do |t|
      t.integer :rental_dependent_no
      t.decimal :rental_gross_income
      t.integer :rental_status

      t.timestamps

    end
  end
end
