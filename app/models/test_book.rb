class TestBook < ActiveRecord::Base
  has_many :tests

  validates :name, presence: true, uniqueness: true
end
