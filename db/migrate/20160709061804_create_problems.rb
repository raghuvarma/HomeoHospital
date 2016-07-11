class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :problem_type
      t.text :description
      t.references :application, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
