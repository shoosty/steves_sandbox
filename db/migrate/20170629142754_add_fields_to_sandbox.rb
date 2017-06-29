class AddFieldsToSandbox < ActiveRecord::Migration[5.1]
  def change
    add_column :sandboxes, :user, :text
    add_column :sandboxes, :email, :text
    add_column :sandboxes, :fname, :text
    add_column :sandboxes, :lname, :text
    add_column :sandboxes, :password, :text
  end
end
