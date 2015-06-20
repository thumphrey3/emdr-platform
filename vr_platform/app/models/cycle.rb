class Cycle < ActiveRecord::Base
  belongs_to :session
  has_many :blsexposures

  validates :session_id, presence: true
end
