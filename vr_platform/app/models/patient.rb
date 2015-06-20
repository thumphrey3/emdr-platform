class Patient < ActiveRecord::Base
  has_many :sessions
  has_many :cycles, :through => :sessions
end
