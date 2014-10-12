class CreateMedicareCostSharings < ActiveRecord::Migration
  def change
    create_table :medicare_cost_sharings do |t|
      t.integer :household_size
      t.decimal :medicare_cost_sharing
      t.decimal :premium_only

      t.timestamps

    end
  end
end
