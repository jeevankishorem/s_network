class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  has_one :user
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
