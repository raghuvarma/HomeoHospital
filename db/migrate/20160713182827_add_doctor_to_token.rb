class AddDoctorToToken < ActiveRecord::Migration
  def change
    add_column :tokens, :doctor, :string
  end
end
