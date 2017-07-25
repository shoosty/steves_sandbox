class User < ApplicationRecord
validate :valid_email


  def valid_email
    unless email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:email, "ERROR - is not an email")
    end
  end
end
