require 'rails_helper'

RSpec.describe "wishlist_items/edit", type: :view do
  before(:each) do
    @wishlist_item = assign(:wishlist_item, WishlistItem.create!(
      :name => "MyString",
      :link => "MyString",
      :wishlist => nil
    ))
  end

  it "renders the edit wishlist_item form" do
    render

    assert_select "form[action=?][method=?]", wishlist_item_path(@wishlist_item), "post" do

      assert_select "input#wishlist_item_name[name=?]", "wishlist_item[name]"

      assert_select "input#wishlist_item_link[name=?]", "wishlist_item[link]"

      assert_select "input#wishlist_item_wishlist_id[name=?]", "wishlist_item[wishlist_id]"
    end
  end
end
