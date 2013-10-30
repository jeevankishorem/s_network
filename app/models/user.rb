class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	  has_many :blogs, dependent: :destroy
    has_many :friendships, foreign_key: "sender_id", dependent: :destroy
    has_many :friend_users, through: :friendships, source: :friend
    has_many :reverse_friendships, foreign_key: "friend_id",
                                   class_name:  "Friendship",
                                   dependent:   :destroy
    has_many :reverse_friend_users, through: :reverse_friendships, source: :sender
	  has_many :comments
	  has_many :discussions
	  has_many :posts

	  def friend?(other_user)
    friendships.find_by(friend_id: other_user.id)
    end

    def sender!(other_user)
    friendships.create!(friend_id: other_user.id)
    end

    def unfriend!(other_user)
    friendships.find_by(friend_id: other_user.id).destroy!
  	end
    
    def feed
    Blog.from_users_friend_by(self)
    end
end
