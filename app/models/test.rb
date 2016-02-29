class Test < ActiveRecord::Base
  belongs_to :test_book
  has_many :groups_tests # necessary?
  has_many :groups, through: :groups_tests

  #scope :outer_join_groups, -> { joins("LEFT JOIN groups ON test_id = 
  #scope :not_given_to, -> (group) { joins(:groups_tests).joins(:groups).where.not('groups.id = ?', group) }

  def self.not_given_to(group)
    #joins(:groups_tests).joins(:groups).where.not('groups.id = ?', group)
    # TODO refactor to use joins
    Test.all.reject do |test|
      test.given_to?(group)
    end
  end

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

  def note_for(group)
    # TODO extract to own method
    groups_tests.find_by(group_id: group.id)&.note
  end

end
