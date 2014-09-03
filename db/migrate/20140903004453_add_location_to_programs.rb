class AddLocationToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :location, :string
  end
end
