class Candidate < ActiveRecord::Base

  belongs_to :user
  belongs_to :source
  belongs_to :status

  validates :name, presence: true

  attr_accessible :comments, :followup_date, :intake_date, :name

end
