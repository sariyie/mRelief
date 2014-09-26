class CreateAllCityPrograms < ActiveRecord::Migration
  def change
    create_table :all_city_programs do |t|

      t.timestamps

    end
  end
end
