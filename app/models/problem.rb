class Problem < ActiveRecord::Base
  belongs_to :application
  validates_presence_of :problem_type
  validates_presence_of :description
  TYPE = ["Head", "Hair", "Eye", "Ear", "Nose", "Ear", "Fever", "Cold", "Stomach", "Hand", "Leg"]
end
