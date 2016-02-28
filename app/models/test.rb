class Test < ActiveRecord::Base
  belongs_to :test_book
  has_many :groups_tests # necessary?
  has_many :groups, through: :groups_tests

  def name
    test_book.name + ' Test ' + number.to_s
  end

  def book_id
    test_book_id
  end

  def given_to?(group)
    group_ids.include?(group.id)
  end
end
