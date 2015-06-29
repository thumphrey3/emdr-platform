class Cycle < ActiveRecord::Base
  belongs_to :session
  has_many :blsexposures
  
end
