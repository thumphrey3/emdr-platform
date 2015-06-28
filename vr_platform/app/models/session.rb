class Session < ActiveRecord::Base
  has_many :cycles
  belongs_to :patient

  def session_label
    "Session #{number} for #{patient.first_name} #{patient.last_name}"
  end
end
