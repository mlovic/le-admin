class Test < ActiveRecord::Base
  belongs_to :test_book
  has_and_belongs_to_many :groups

  def name
    test_book.name + ' Test ' + number.to_s
  end

  def book_id
    test_book_id
  end

  def given_to?(group)
    groups.map(&:id).include?(group.id)
  end
end
