class CreatePreceptions < ActiveRecord::Migration
  def change
    create_table :preceptions do |t|
      t.text :problem
      t.text :medicine
      t.references :application, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
