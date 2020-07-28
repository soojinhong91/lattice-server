class Project < ApplicationRecord
  has_and_belongs_to_many :users, :optional => true
  has_many :cards, :dependent => :destroy
end
