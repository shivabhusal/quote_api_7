require 'rails_helper'

RSpec.describe "quotes/index", type: :view do
  before(:each) do
    assign(:quotes, [
      Quote.create!(
        title: "Title",
        author: "Author"
      ),
      Quote.create!(
        title: "Title",
        author: "Author"
      )
    ])
  end

  it "renders a list of quotes" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
  end
end
