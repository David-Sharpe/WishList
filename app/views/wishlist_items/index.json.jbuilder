json.array!(@wishlist_items) do |wishlist_item|
  json.extract! wishlist_item, :id, :name, :link, :wishlist_id
  json.url wishlist_item_url(wishlist_item, format: :json)
end
