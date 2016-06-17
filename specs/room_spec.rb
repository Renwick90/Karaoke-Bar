require('minitest/autorun')
require_relative("../room.rb")

class TestRoom < Minitest::Test
  
  def setup
    @room1 = Room.new("Room 1", 10, 0)
    @room2 = Room.new("Room 2", 10, 0)
    @room3 = Room.new("Room 3", 10, 0)
    
  end

  def test_room_name
    assert_equal("Room 1", @room1.name())
  end

  def test_room_capacity
    assert_equal(10, @room3.capacity())
  end

  def test_room_increase_guests 
      @room2.increase_guests(7)
      assert_equal(7, @room2.guests)
  end 



end

