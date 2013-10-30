class Blog < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	default_scope -> { order('created_at DESC') }
    validates :user_id, presence: true
    validates :title, presence: true, :length => { :within => 8..50 }
    validates :content, presence: true, :length => { :within => 8..500 }

    def self.from_users_friend_by(user)
    friend_user_ids = user.friend_user_ids
    where("user_id IN (:friend_user_ids) OR user_id = :user_id",
          friend_user_ids: friend_user_ids, user_id: user)
    end
  # "SELECT friend_id FROM friendships WHERE friend_id = :user_id"
end
