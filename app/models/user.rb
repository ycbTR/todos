class User < ActiveRecord::Base
  has_secure_password #see bcrypt-ruby

  validates_uniqueness_of :email
  validates_length_of :password, :minimum => 6
  has_many :tasks

end
