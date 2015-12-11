class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :wishlist
  
  after_create :create_wishlist
  
  private
    def create_wishlist
      wishlist = Wishlist.new(user_id: self.id)
      wishlist.save
    end
end
