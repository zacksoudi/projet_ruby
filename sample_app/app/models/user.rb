class User < ActiveRecord::Base
  

  attr_accessor :password
  
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }
  before_save :encrypt_password
  validates :nom, :presence => true,
                  :length   => { :maximum => 50} 

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, :presence   => true,
                    :format     => { :with => email_regex},
                    :uniqueness => true

end
