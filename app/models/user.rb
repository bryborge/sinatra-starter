# frozen_string_literal: true

# User
class User < ActiveRecord::Base
  has_secure_password

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\z/i

  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
end
