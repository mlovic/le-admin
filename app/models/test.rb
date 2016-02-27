class Test < ActiveRecord::Base
  belongs_to :test_book
  has_and_belongs_to_many :groups
end
