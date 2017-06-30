require File.expand_path('../../config/environment', __FILE__)

# add reocrds to the sandbox deveolpment database
class AddFakeRecords
  def add_fake_records
    counter = 0

    until counter == 100
      Sandbox.create(
        fname: Faker::Name.first_name,
        lname: Faker::Name.last_name,
        user: Faker::Artist.name,
        email: Faker::Internet.email,
        password: Faker::Crypto.md5
        )
      counter += 1
    end
  end
end

AddFakeRecords.new.add_fake_records
