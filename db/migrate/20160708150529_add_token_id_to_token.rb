class AddTokenIdToToken < ActiveRecord::Migration
  def change
    add_column :tokens, :token_id, :integer
  end
end
