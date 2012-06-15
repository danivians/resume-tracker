class User < ActiveRecord::Base

  before_destroy :confirm_no_candidates

  include FriendlyId
  friendly_id :login

  has_many :candidates

  validates :name, presence: true
  validates :login, presence: true, uniqueness: true

  attr_accessible :login, :name

  default_scope order: 'name ASC'


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
