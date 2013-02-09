class AddStatusToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :status, :string
  end
end
