class AddFieldsToMountain < ActiveRecord::Migration[5.1]
  def change
    add_column :mountains, :planet, :text
  end
end
