class CreateSandboxes < ActiveRecord::Migration[5.1]
  def change
    create_table :sandboxes do |t|

      t.timestamps
    end
  end
end
