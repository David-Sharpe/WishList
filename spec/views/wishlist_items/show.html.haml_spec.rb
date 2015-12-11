require 'rails_helper'

RSpec.describe "wishlist_items/show", type: :view do
  before(:each) do
    @wishlist_item = assign(:wishlist_item, WishlistItem.create!(
      :name => "Name",
      :link => "Link",
      :wishlist => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(//)
  end
end
