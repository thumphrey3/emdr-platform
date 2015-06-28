class Cycle < ActiveRecord::Base
  belongs_to :session
  has_many :blsexposures
  has_one :target

  def cycle_label
    "Cycle for #{target} Event"
  end
end
