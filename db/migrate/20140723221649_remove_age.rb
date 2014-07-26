class RemoveAge < ActiveRecord::Migration
  def change
    remove_column :snap_eligibilities, :age, :integer
  end
end
