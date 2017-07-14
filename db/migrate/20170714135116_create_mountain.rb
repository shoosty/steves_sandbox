class CreateMountain < ActiveRecord::Migration[5.1]
  def change
    create_table :mountains do |t|
      t.text :mountain
      t.integer :height
      t.text :notes
    end
  end
end
