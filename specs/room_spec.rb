require('minitest/autorun')
require_relative("../room.rb")
require_relative('../songs.rb')
require_relative('../guests.rb')

class TestRoom < Minitest::Test
  
  def setup
    @room1 = Room.new("Room 1", 10, 5)
    @room2 = Room.new("Room 2", 10, 0)
    @room3 = Room.new("Room 3", 10, 5)
    
    @rooms = [@room1, @room2, @room3]
  end

  def test_room_name
    assert_equal("Room 1", @room1.name())
  end

  def test_room_capacity
    assert_equal(10, @room3.capacity())
  end

  def test_room_increase_guest_total
      @room2.increase_guest_total(7)
      assert_equal(7, @room2.guest_total)
  end 

  def test_add_guest_to_room
    @room3.add_guest(@guest)
    assert_equal("Bruno", @room3.guest)
  end

  def test_count_guest_total
    @rooms.count_guest_total()
    assert_equal(17, @rooms.guest_total)
  end

  def test_add_song_to_room
    @room3.add_song_to_room(@song6)
    assert_equal("James Brown", @room3.song)
  end


end

