class CreateRtaFreeRides < ActiveRecord::Migration
  def change
    create_table :rta_free_rides do |t|
      t.integer :rta_dependent_no
      t.decimal :rta_gross_income

      t.timestamps

    end
  end
end
