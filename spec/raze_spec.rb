require 'spec_helper'
describe Raze do
  describe '#flatten' do
    let(:test) {
                    {
                      test1: ['string_in_array', :symbol_in_array],
                      test2: {test_hash: ['string_in_array']},
                      test3: [1, 2, 3, 4, 5, 6, 7, 8, 9]
                    }
                  }

    subject { Raze.flatten(test) }

    it 'flattens a collection' do
      expect(subject).to eq([:test1,
                             "string_in_array",
                             :symbol_in_array,
                             :test2,
                             :test_hash,
                             "string_in_array",
                             :test3,
                             1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
end
