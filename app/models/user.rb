class User < ActiveRecord::Base
  attr_accessible :email, :password

  def self.authenticate email, password
    where(:email => email, :password => password).first
  end
end
