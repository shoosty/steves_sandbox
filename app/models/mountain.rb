class Mountain < ApplicationRecord
  validates :planet, inclusion:{in: %w(Earth Mars), message: "ERROR - %{value} is not valid. The planet must only be Earth of Mars"}
  validate :tallest_mountain_height_per_planet, :valid_email, :mountain_empty, :valid_phone

  def mountain_empty
    if mountain == ''
      errors.add(:mountain, "ERROR - Mountain can not be empty")
      return false
    end
  end

  def tallest_mountain_height_per_planet
    if height == nil
      errors.add(:height, "ERROR - Height can not be empty")
      return false
    end

    unless (height > 999 &&
      planet == 'Earth' &&
      height <= 40000)||
      (height > 999 &&
      planet == 'Mars' &&
      height <= 90000)
      errors.add(:height, "ERROR - The smallest mountain must be at least 1000 feet and the tallest mountain on Earth is 40,000 ft., Mars is 90,000 ft")
    end
  end

  def valid_email
    unless record_added_by_email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:record_added_by_email, "ERROR - is not an email")
    end
  end

  def valid_phone
    if phone == nil
      errors.add(:phone, "ERROR - Phone can not be empty")
      return false
    end

    unless (phone.size >= 8 && phone.size <= 16)
      errors.add(:phone, "ERROR - a phone number must be between 9 and 16 digits")
    end
  end

end
