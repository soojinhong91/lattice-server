class User < ApplicationRecord
  has_and_belongs_to_many :projects

  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates :username, :presence => true, :uniqueness => true, :length => { minimum: 6 }
  
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
