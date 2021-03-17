class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
  # before_create :set_default_avatar

  # def set_default_avatar
  #   image_url = "https://www.amug.com/wp-content/uploads/2016/09/placeholder.jpg"
  # end
  # mount_uploader :image_url, AvatarUploader

end
