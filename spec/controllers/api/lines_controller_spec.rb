require 'rails_helper'

module Api
  describe LinesController do

    describe '#show' do
      let(:id) { "1" }

      context 'correctly receives an id parameter' do
        it 'gets the specified line' do
          expect(Line).to receive(:find).with(id)
          get :show, { id: id, format: :json }
        end
      end

      context 'receives an id for a non-existent line' do
        it 'gets the specified line' do
          expect(Line).to receive(:find).and_raise(ActiveRecord::RecordNotFound)
          get :show, { id: 9001, format: :json }
        end
      end

    end

    describe '#random' do
      it 'gets a random line' do
        expect(Line).to receive(:random)
        get :random, format: :json
      end
    end

  end
end
