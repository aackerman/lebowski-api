require 'spec_helper'

describe Api::SearchController do

  describe '#show' do
    let(:term) { "rug" }

    context 'correctly receives an term parameter' do
      let(:helper) { double }

      it 'gets the specified quote' do
        expect(Line).to receive(:search).with(term).and_return(helper)
        expect(helper).to receive(:joins).with(:quote).and_return(helper)
        expect(helper).to receive(:includes).with(:character, :quote).and_return(helper)
        expect(helper).to receive(:map)
        get :show, { term: term }
      end
    end

  end

end
