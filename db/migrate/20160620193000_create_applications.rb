class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :relation_name
      t.text :address
      t.text :details
      t.boolean :is_doctor

      t.timestamps null: false
    end
  end
end
