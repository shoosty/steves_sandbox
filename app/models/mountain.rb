class Mountain < ApplicationRecord
  validates :planet, inclusion:{in: %w(Earth Mars), message: "ERROR - %{value} is not valid. The planet must only be Earth of Mars"}
  validate :tallest_mountain_height_per_planet, :valid_email, :mountain_empty

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

    unless (height > 1000 &&
      planet == 'Earth' &&
      height <= 40000)||
      (height > 1000 &&
      planet == 'Mars' &&
      height <= 90000)
      errors.add(:height, "ERROR - The tallest mountain on Earth is 40,000 ft., Mars is 90,000 ft")
    end
  end

  def valid_email
    unless record_added_by_email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      errors.add(:record_added_by_email, "ERROR - is not an email")
    end
  end
end
