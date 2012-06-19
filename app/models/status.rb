class Status < ActiveRecord::Base

  before_destroy :confirm_no_candidates

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


  private

  def confirm_no_candidates
    if candidates.count > 0
      errors.add(:base, "can't be destroyed while candidates are still assigned.")
      false
    else
      true
    end
  end

end
