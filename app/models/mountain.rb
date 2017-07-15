class Mountain < ApplicationRecord
  validates :planet, inclusion:{in: %w(Earth Mars), message: "ERROR - %{value} is not valid. the planet must only be Earth of Mars"}
  validate :tallest_mountain_height_per_planet

  def tallest_mountain_height_per_planet
    unless (height > 1000 &&
      planet == 'Earth' &&
      height <= 40000)||
      (height > 1000 &&
      planet == 'Mars' &&
      height <= 90000)
      errors.add(:height, "ERROR - The tallest mountain on Earth is 40,000 ft., Mars is 90,000 ft")
    end
  end
end
