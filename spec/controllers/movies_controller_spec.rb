require 'rails_helper'

RSpec.describe MoviesController, type: :controller do


  describe 'GET #index' do
    context 'if movies are present' do
      let(:movie) { FactoryGirl.create(:movie) }

      context 'render index' do
        it 'shows all movie' do
          get :index
          expect(response).to have_http_status(200)
        end
      end
    end
  end
end
