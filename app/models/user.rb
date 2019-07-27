class User < ActiveRecord::Base
  has_many :tasks

  # validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5 }
  # validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
  # validates :password, presence: true, format: { with: /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,15}\z/, message: "Password must be 6 to 15 characters and include at least one number and one letter." }
end
