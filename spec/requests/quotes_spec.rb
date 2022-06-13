require 'rails_helper'

RSpec.describe "/quotes", type: :request do
  describe "GET /show" do
    before do
      create :quote, title: 'quote 1'
    end

    it "renders a successful response" do
      get quote_url
      expect(response).to be_successful
    end

    context 'When HTML response is requested' do
      it 'renders a HTML page' do
        get quote_url
        expect(response.headers['Content-Type']).to include('text/html')
      end
    end

    context 'When JSON response is requested' do
      it 'renders a JSON string' do
        get quote_url('json')
        expect(response.headers['Content-Type']).to include('application/json')
      end

      context 'Random Response' do
        before do
          (2..100).each do |x|
            create :quote, title: "quote #{x}"
          end
        end

        it 'renders random quote everytime' do
          get quote_url('json')
          response1 = JSON.parse(response.body)
          get quote_url('json')
          response2 = JSON.parse(response.body)

          expect(response1['id']).not_to eq(response2['id'])
        end
      end
    end

    context 'When XML response is requested' do
      it 'renders a XML page' do
        get quote_url('xml')
        expect(response.headers['Content-Type']).to include('application/xml')
      end
    end
  end
end
