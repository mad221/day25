class User < ApplicationRecord
  require 'open-uri'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :attendances, dependent: :destroy
  has_many :events ,through: :attendances
  has_many :events, dependent: :destroy
  has_one_attached :profile_pic

  before_create :set_default_profile_pic
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  def set_default_profile_pic
    downloaded_image = (open('https://loremflickr.com/320/240'))
    self.profile_pic.attach(io: downloaded_image, filename: 'image.png')

  end
end
