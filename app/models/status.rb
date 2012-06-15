class Status < ActiveRecord::Base

  has_many :candidates

  validates :main, presence: true, uniqueness: true
  validates :secondary, presence: true

  attr_accessible :main, :secondary

  default_scope order: 'main, secondary'

  # Return an Array of all the main statuses
  def self.main_statuses
    select('main').uniq.map { |status| status.main }
  end

  # Return a String containing the full (main and secondary) status.
  def full_status
    "#{main} - #{secondary}"
  end

end
