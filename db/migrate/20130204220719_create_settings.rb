class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :border
      t.integer :size
      t.integer :size_p
      t.integer :white_p
      t.integer :black_p

      t.timestamps
    end
  end
end
