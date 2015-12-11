require 'rails_helper'

RSpec.describe "WishlistItems", type: :request do
  describe "GET /wishlist_items" do
    it "works! (now write some real specs)" do
      get wishlist_items_path
      expect(response).to have_http_status(200)
    end
  end
end
