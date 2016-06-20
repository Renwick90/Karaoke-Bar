require_relative("room.rb")
require_relative("songs.rb")

class Room

  attr_reader :name, :capacity, :guest_total, :guest, :song

  def initialize(name, capacity, guest_total, guest = [], song = [])
    @name = name
    @capacity = capacity 
    @guest_total = guest_total
    @guest = []
    @song = []
  end

  def room_name(name)
    return @name
  end

  def room_capacity(capacity)
    return @capacity
  end

  def increase_guest_total(guest_total)
    @guest_total += guest_total
  end

  def add_guest(guest = [])
    @guest << guest
  end 

  def count_guest_total()
    @guest_total += guest_total
  end

  def add_song_to_room(song = [])
    @song << song
  end

end