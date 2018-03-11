class User < ApplicationRecord
  validates_presence_of :email, :password, :username

  validates_uniqueness_of :email, message: "already a user with that email"
  # in message print the username
  validates_uniqueness_of :username, message: "username is already taken"
  validate :valid_email? if :email.present?

  before_save :encrypt_password

  def encrypt_password
    Rails.logger.info "Encrypting the password"
  end

  def valid_email?
    /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.match?(:email)
  end
end
