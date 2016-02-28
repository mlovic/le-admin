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

  # TODO should live here or in Group?
  def given_to?(group)
    group.received?(self)
  end

  def given_on(group)
    return unless given_to?(group)
    group.received_on(self)
  end

end
