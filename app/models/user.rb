class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # CONFIRNAMBLE (:CONFIRNABLE) => USER HAS TO CONFIRM EMAIL ON REGISTRETION
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :archives
  has_many :chats

  # ADD BELOW FOR YOUR USER TO BE ABLE TO ATTACH PHOTO + CLOUDINARY PASSWORD IN .env
  has_one_attached :photo
end
