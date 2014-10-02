class LogHour < ActiveRecord::Base
  belongs_to :user

  validates :hours, numericality: true, allow_nil: false
end
