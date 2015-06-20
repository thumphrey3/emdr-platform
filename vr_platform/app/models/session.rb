class Session < ActiveRecord::Base
  has_many :cycles
  belongs_to :patient
end
