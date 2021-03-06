class Token < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :relation_name
	validates :application_id, inclusion: { in: Application.all.map{|a| a.id},
    message: "%{value} is not a valid Application Number" }, :unless => :is_new_application?
  belongs_to :application
  DOCTORS = User.where("role_id IN (?)", [2,5,8]).collect{|d| d.name}
  USERS = User.all.collect{|d| d.name}
  STATUS = ["Started", "Waited for Checkup", "Waited for Medicine", "Medicine given", "Closed"]
end
