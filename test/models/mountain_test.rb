require 'test_helper'

class MountainTest < ActiveSupport::TestCase

  def test_phone
    mountain = Mountain.new(phone:'1112223')
    mountain.valid_phone

    refute_empty mountain.errors[:phone]
  end

  def test_phone2
    mountain = Mountain.new(phone:'111222333366666666666666666666')
    mountain.valid_phone

    refute_empty mountain.errors[:phone]
  end

  def test_phone3
    mountain = Mountain.new(phone:'1112223333')
    mountain.valid_phone

    assert_empty mountain.errors[:phone]
  end

  def test_phone4
    mountain = Mountain.new(phone:'(111222-^&*3333')
    mountain.valid_phone

    assert_empty mountain.errors[:phone]
  end
end
