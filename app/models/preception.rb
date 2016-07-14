class Preception < ActiveRecord::Base
  belongs_to :application
  validates_presence_of :doctor_name
  validates_presence_of :problem
  validates_presence_of :medicine
  #before_create :set_doctor_name

   # private

   # def set_doctor_name
   #    self.doctor_name = current_user.name
   # end

end
