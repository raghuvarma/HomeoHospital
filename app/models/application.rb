class Application < ActiveRecord::Base
	has_many :tokens
	has_many :preceptions
	has_many :problems

  	validates_presence_of :name
  	validates_presence_of :relation_name

	#Problem = ["Head", "Hair", "Eye", "Ear", "Nose", "Ear", "Fever", "Cold", "Stomach", "Hand", "Leg"]
end
