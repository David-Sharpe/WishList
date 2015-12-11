require 'rails_helper'

RSpec.describe "wishlists/index", type: :view do
  before(:each) do
    assign(:wishlists, [
      Wishlist.create!(
        :user => nil,
        :count => 1
      ),
      Wishlist.create!(
        :user => nil,
        :count => 1
      )
    ])
  end

  it "renders a list of wishlists" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
