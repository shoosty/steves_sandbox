require File.expand_path('../../config/environment', __FILE__)

# add reocrds to the sandbox deveolpment database
class AddRecs
  def add_fake_records
    a = 0

    until a == 100
      Sandbox.create(fname: Faker::Name.first_name,lname: Faker::Name.last_name,
      user: Faker::Artist.name, email: Faker::Internet.email, password: Faker::Crypto.md5)
      a += 1
    end
  end
end

AddRecs.new.add_fake_records
