require 'rails_helper'

module Api
  describe QuotesController do

    describe '#show' do
      let(:id) { "1" }

      context 'correctly receives an id parameter' do
        it 'gets the specified quote' do
          expect(Quote).to receive(:find).with(id)
          get :show, { id: id, format: :json }
        end
      end

      context 'receives an id for a non-existent quote' do
        it 'gets the specified quote' do
          expect(Quote).to receive(:find).and_raise(ActiveRecord::RecordNotFound)
          get :show, { id: 9001, format: :json }
        end
      end

    end

    describe '#random' do
      it 'gets a random line' do
        expect(Quote).to receive(:random)
        get :random, format: :json
      end
    end

  end
end
