class Patient < ActiveRecord::Base
  serialize :conditions
  
  has_many :sessions
  has_many :cycles, :through => :sessions
end
