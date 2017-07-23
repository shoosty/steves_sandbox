class AddPhoneNumberToMountain < ActiveRecord::Migration[5.1]
  def change
    add_column :mountains, :phone, :text
  end
end
