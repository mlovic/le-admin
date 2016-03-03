class TestBook < ActiveRecord::Base
  has_many :tests, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
