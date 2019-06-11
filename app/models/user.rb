class User < ApplicationRecord
  has_many :microposts, dependent: :destroy
  attr_accessor :current_password
  before_save { self.email = email.downcase }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :firstname, presence: true
  validates :lastname,  presence: true
  validates :username,  presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,     presence: true,  format: { with: VALID_EMAIL_REGEX },
                        uniqueness: { case_sensitive: false }
end
