class Group < ActiveRecord::Base
  has_many :groups_tests # necessary?
  has_many :tests, through: :groups_tests

  # TODO should live here or in Test?
  def received_on(test)
    return unless received?(test)
    groups_tests.find_by(test_id: test.id).test_date
  end

  def received?(test)
    test_ids.include?(test.id)
  end

  def last_test
    # TODO try without calling TEST. just group.where...
    return if tests.empty?
    Test.includes(:groups_tests, :groups).where('groups.id = ? ', self.id).order('groups_tests.test_date DESC').first.name
  end

end
