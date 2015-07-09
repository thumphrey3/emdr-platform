class Patient < ActiveRecord::Base
  serialize :conditions
  
  has_many :sessions
  has_many :cycles, :through => :sessions
  has_one :determinant

  def fullname
    "#{first_name} #{last_name}"
  end
end
