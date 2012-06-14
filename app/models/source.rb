class Source < ActiveRecord::Base

  has_many :candidates

  validates :name, presence: true, uniqueness: true

  attr_accessible :name

  default_scope order: 'name ASC'

end
