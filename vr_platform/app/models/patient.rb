class Patient < ActiveRecord::Base
  serialize :conditions
  
  has_many :sessions
  has_many :cycles, :through => :sessions

  def fullname
    "#{first_name} #{last_name}"
  end
end
