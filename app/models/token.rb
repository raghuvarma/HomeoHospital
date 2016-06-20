class Token < ActiveRecord::Base
	validates_presence_of :application_id, :unless => :is_new_application?
  belongs_to :application
end
