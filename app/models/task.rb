class Task < ActiveRecord::Base
	belongs_to :user
	has_many :collaborators
	validates :hours_to_complete, numericality: true, allow_nil: true
end
