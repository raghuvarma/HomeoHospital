class AddOtherProblemTypeToProblem < ActiveRecord::Migration
  def change
    add_column :problems, :other_problem_type, :string
  end
end
