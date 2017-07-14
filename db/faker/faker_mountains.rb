# load rails environment
require File.expand_path('../../../config/environment', __FILE__)

class AddFakeMountains
  def add_fake_mountains
    n = 20

    n.downto(1){
      Mountain.create(
        mountain: Faker::Name.last_name,
        height: Faker::Number.between(1000,10000),
        notes:  Faker::TwinPeaks.quote)
  }
  end
end

AddFakeMountains.new.add_fake_mountains
