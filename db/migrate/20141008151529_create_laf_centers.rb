class CreateLafCenters < ActiveRecord::Migration
  def change
    create_table :laf_centers do |t|
      t.string :zipcode
      t.string :city
      t.string :center
      t.string :address
      t.string :contact
      t.string :telephone
      t.string :spanish

      t.timestamps

    end
  end
end
