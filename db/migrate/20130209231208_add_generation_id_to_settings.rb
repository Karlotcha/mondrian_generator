class AddGenerationIdToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :generation_id, :integer
  end
end
