class AddIsActiveToToken < ActiveRecord::Migration
  def change
    add_column :tokens, :is_active, :boolean
  end
end
