class GroupsTest < ActiveRecord::Base
  belongs_to :test
  belongs_to :group

  before_create { self.test_date = Date.today } # TODO allow override
   
end

