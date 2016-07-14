class Problem < ActiveRecord::Base
  belongs_to :application
  validates_presence_of :problem_type
  validates_presence_of :description
  validates_presence_of :other_problem_type, :if => lambda { |o| o.problem_type == "Other" }
  TYPE = ["Head", "Hair", "Eye", "Ear", "Nose", "Ear", "Fever", "Cold", "Stomach", "Hand", "Leg", "Other"]
end
