json.array!(@wishlists) do |wishlist|
  json.extract! wishlist, :id, :user_id, :count
  json.url wishlist_url(wishlist, format: :json)
end
