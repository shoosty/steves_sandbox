# load rails environment
require File.expand_path('../../../config/environment', __FILE__)

class AddFakeAccounts
  def add_fake_acocunts
    n = 20

    n.downto(1){
      Account.create(
        accountholder: Faker::Name.name_with_middle,
        location: Faker::Address.street_name)
        }
  end
end

AddFakeAccounts.new.add_fake_acocunts
