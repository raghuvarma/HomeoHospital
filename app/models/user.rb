class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role

  has_many :tokens

  validates_presence_of :name
	before_save :assign_role

	# def assign_role
	#   self.role = Role.find_by name: "Staff" if self.role.nil?
	# end

	def admin?
	  self.role.name == "Admin"
	end

	def doctor?
	  self.role.name == "Doctor"
	end

	def staff?
	  self.role.name == "Staff"
	end

end
