class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :wishlist
  has_one :user_profile

  after_create :create_wishlist, :create_profile

  private

  def create_wishlist
    wishlist = Wishlist.new(user_id: id)
    wishlist.save
  end

  def create_profile
    profile = UserProfile.new(user_id: id)
    profile.save
  end
end
