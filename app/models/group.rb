class Group < ActiveRecord::Base
  has_many :groups_tests # necessary?
  has_many :tests, through: :groups_tests
end
