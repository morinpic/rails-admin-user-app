class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :email, :password, presence: true

  def created_by?(user)
    return false unless user
	  id == user.id
  end
end
