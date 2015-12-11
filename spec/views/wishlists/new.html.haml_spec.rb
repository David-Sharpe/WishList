require 'rails_helper'

RSpec.describe "wishlists/new", type: :view do
  before(:each) do
    assign(:wishlist, Wishlist.new(
      :user => nil,
      :count => 1
    ))
  end

  it "renders new wishlist form" do
    render

    assert_select "form[action=?][method=?]", wishlists_path, "post" do

      assert_select "input#wishlist_user_id[name=?]", "wishlist[user_id]"

      assert_select "input#wishlist_count[name=?]", "wishlist[count]"
    end
  end
end
