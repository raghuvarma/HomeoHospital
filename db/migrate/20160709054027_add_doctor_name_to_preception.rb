class AddDoctorNameToPreception < ActiveRecord::Migration
  def change
    add_column :preceptions, :doctor_name, :string
  end
end
