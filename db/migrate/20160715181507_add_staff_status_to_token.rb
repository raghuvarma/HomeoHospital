class AddStaffStatusToToken < ActiveRecord::Migration
  def change
    add_column :tokens, :staff1, :string
    add_column :tokens, :staff2, :string
    add_column :tokens, :is_staff2_involved, :boolean
    add_column :tokens, :status, :string
  end
end
