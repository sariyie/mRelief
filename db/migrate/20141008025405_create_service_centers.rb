class CreateServiceCenters < ActiveRecord::Migration
  def change
    create_table :service_centers do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :organization

      t.timestamps

    end
  end
end
