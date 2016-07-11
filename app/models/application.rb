class Application < ActiveRecord::Base
	has_many :tokens
	has_many :preceptions
	has_many :problems

	#Problem = ["Head", "Hair", "Eye", "Ear", "Nose", "Ear", "Fever", "Cold", "Stomach", "Hand", "Leg"]
end
