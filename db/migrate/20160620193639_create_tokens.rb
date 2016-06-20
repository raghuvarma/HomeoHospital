class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :name
      t.string :relation_name
      t.boolean :is_new_application
      t.references :application, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
