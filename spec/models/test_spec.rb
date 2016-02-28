require 'rails_helper'

RSpec.describe Test do
  let(:test) { Test.new }
  describe '#given_to?' do
    let(:group) { Group.new }

    it 'returns false when not given to group' do
      expect(test.given_to?(group)).to be false
    end

    it 'returns true when given to group' do
      test.groups << group

      expect(test.given_to?(group)).to be true
    end

  end
end
