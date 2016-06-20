require('minitest/autorun')
require_relative('../guests.rb')

class Guests < Minitest::Test


  def test_guest_name
    @bruno = Guest.new("Bruno", 100)
    assert_equal("Bruno", @bruno.name())
  end

  def test_pay_for_song
    @bruno = Guest.new("Bruno", 100)
    @guest.pay_for_song(-10)
    assert_equal(90, @bruno.wallet)
  end

end