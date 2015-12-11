require 'rails_helper'

RSpec.describe "wishlist_items/index", type: :view do
  before(:each) do
    assign(:wishlist_items, [
      WishlistItem.create!(
        :name => "Name",
        :link => "Link",
        :wishlist => nil
      ),
      WishlistItem.create!(
        :name => "Name",
        :link => "Link",
        :wishlist => nil
      )
    ])
  end

  it "renders a list of wishlist_items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
