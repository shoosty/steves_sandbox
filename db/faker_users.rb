# load rails environment
require File.expand_path('../../config/environment', __FILE__)

# add records to users table

class AddFakeRecords
  def add_fake_records

    n = 20
   n.downto(1){
      User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        age: Faker::Number.between(1, 120)
        )
    }
  end
end


AddFakeRecords.new.add_fake_records
