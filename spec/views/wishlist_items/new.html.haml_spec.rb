require 'rails_helper'

RSpec.describe "wishlist_items/new", type: :view do
  before(:each) do
    assign(:wishlist_item, WishlistItem.new(
      :name => "MyString",
      :link => "MyString",
      :wishlist => nil
    ))
  end

  it "renders new wishlist_item form" do
    render

    assert_select "form[action=?][method=?]", wishlist_items_path, "post" do

      assert_select "input#wishlist_item_name[name=?]", "wishlist_item[name]"

      assert_select "input#wishlist_item_link[name=?]", "wishlist_item[link]"

      assert_select "input#wishlist_item_wishlist_id[name=?]", "wishlist_item[wishlist_id]"
    end
  end
end
