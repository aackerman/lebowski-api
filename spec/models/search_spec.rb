require 'spec_helper'

describe Search do
  describe '#search' do
    it 'raises on the base Search' do
      expect {
        Search.new('achievers')
      }.to raise_error
    end
  end
end
