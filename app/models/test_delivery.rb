class TestDelivery < ActiveRecord::Base
  belongs_to :test
  belongs_to :group

  validates :test_id, presence: true, uniqueness: { scope: :group_id }
  validates :group_id, presence: true, uniqueness: { scope: :test_id }
  # TODO both necessary?

  #before_create { self.test_date = Date.today } # TODO allow override
   
end

