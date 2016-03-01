require 'rails_helper'

RSpec.describe Group do
  let(:group) { Group.new }
  describe '#received?' do
    let(:test) { Test.new }

    it 'returns false when not received' do
      expect(group.received?(test)).to be false
    end

    it 'returns true when recieved' do
      # TODO implement Group#add_test method
      group.tests << test

      expect(group.received?(test)).to be true
    end
  end

  # TODO duplicated testing with Test

  describe '#received_on' do
    let(:test) { Test.new }

    it 'returns date the test was recieved' do
      test.groups << group
      # TODO shouldn't be necessary
      group.save!
      test.save!

      expect(group.received_on(test)).to eq Date.today
    end

    it 'returns nil when not given' # or should it raise exception?

  end

  describe '#last_test' do
    it 'returns last test' do
      #group.give_tests << Test.create test_date
      
    end
    
  end
end
