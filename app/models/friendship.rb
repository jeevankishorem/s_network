class Friendship < ActiveRecord::Base
	belongs_to :sender, class_name: "User"
    belongs_to :friend, class_name: "User"
    validates :sender_id, presence: true
    validates :friend_id, presence: true
end
