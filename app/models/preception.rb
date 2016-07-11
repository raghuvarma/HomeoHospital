class Preception < ActiveRecord::Base
  belongs_to :application
  validates_presence_of :doctor_name
  validates_presence_of :problem
  validates_presence_of :medicine
end
