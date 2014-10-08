class AddDescriptionToServiceCenter < ActiveRecord::Migration
  def change
     add_column :service_centers, :description, :string
  end
end
