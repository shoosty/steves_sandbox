class AddEmailToMountain < ActiveRecord::Migration[5.1]
  def change
    add_column :mountains, :record_added_by_email, :text
  end
end
