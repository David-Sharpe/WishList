class RemoveCountFromWishlist < ActiveRecord::Migration
  def change
    remove_column :wishlists, :count, :string
  end
end
