class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :blogs
	has_many :comments
	has_many :discussions
	has_many :posts

	#validates :name, length: { minimum: 2 },

end

