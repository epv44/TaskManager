class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable
	validates :username, presence: true, length: {maximum: 255}, 
	                     uniqueness: { case_sensitive: false }, 
	                     format: { with: /\A[a-zA-Z0-9]*\z/, 
	                     	message: "may only contain letters and numbers." }
	attr_accessor :login

	def self.find_for_database_authentication(warden_conditions)
		conditions = warden_conditions.dup
	  	if login = conditions.delete(:login)
	    	where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
	  	else
	    	where(conditions).first
	  	end
	end
end
