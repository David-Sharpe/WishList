class CreateWishlistItems < ActiveRecord::Migration
  def change
    create_table :wishlist_items do |t|
      t.string :name
      t.string :link
      t.references :wishlist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
