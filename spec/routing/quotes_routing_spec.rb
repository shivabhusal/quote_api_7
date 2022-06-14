require "rails_helper"

RSpec.describe QuotesController, type: :routing do
  describe "routing" do
    it "routes to /quote" do
      expect(get: "/quote").to route_to("quotes#show")
    end
  end
end
