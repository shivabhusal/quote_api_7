require 'rails_helper'

RSpec.describe "quotes/edit", type: :view do
  before(:each) do
    @quote = assign(:quote, Quote.create!(
      title: "MyString",
      author: "MyString"
    ))
  end

  it "renders the edit quote form" do
    render

    assert_select "form[action=?][method=?]", quote_path(@quote), "post" do

      assert_select "input[name=?]", "quote[title]"

      assert_select "input[name=?]", "quote[author]"
    end
  end
end
