class User < ActiveRecord::Base

  include FriendlyId
  friendly_id :login

  validates :name, presence: true
  validates :login, presence: true, uniqueness: true

  attr_accessible :login, :name

  default_scope order: 'name ASC'

end
