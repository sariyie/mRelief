class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :organization_id
      t.string :name
      t.string :url

      t.timestamps

    end
  end
end
