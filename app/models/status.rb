class Status < ActiveRecord::Base

  has_many :candidates

  validates :primary, presence: true, uniqueness: true
  validates :secondary, presence: true

  attr_accessible :primary, :secondary

  # 'primary' is a reserved word in SQL, so it needs to be quoted
  default_scope order: '`primary`, secondary'

  # Return an Array of all the primary statuses
  def self.primaries
    select('`primary`').uniq.map { |status| status.primary }
  end

  # Return a String containing the full (primary and secondary) status.
  def full_status
    "#{primary} - #{secondary}"
  end

end
