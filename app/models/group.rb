class Group < ActiveRecord::Base
  has_many :test_deliveries # necessary?
  has_many :tests, through: :test_deliveries

  # TODO should live here or in Test?
  def received_on(test)
    return unless received?(test)
    test_deliveries.find_by(test_id: test.id).test_date
  end

  def received?(test)
    test_ids.include?(test.id)
  end

  def last_test
    # TODO try without calling TEST. just group.where...
    return if tests.empty?
    Test.includes(:test_deliveries, :groups).where('groups.id = ? ', self.id).order('test_deliveries.test_date DESC').first.name
  end

end
