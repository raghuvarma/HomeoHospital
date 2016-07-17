class AddEnteredByToProblem < ActiveRecord::Migration
  def change
    add_column :problems, :entered_by, :string
  end
end
