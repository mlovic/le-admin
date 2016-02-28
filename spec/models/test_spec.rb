require 'rails_helper'

RSpec.describe Test do
  let(:test) { Test.new }
  describe '#given_to?' do
    let(:group) { Group.new }

    it 'returns false when not given to group' do
      expect(test.given_to?(group)).to be false
    end

    it 'returns true when given to group' do
      group.tests << test

      expect(test.given_to?(group)).to be true
    end
  end

  describe '#given_on' do
    let(:group) { Group.new }

    it 'returns date the test was given' do
      test.groups << group
      test.save!
      group.save!

      expect(test.given_on(group)).to eq Date.today
    end

    it 'returns nil when not given' # or should it raise exception?

  end
end
