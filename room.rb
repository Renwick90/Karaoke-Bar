class Room

  attr_reader :name, :capacity, :guests

  def initialize(name, capacity, guests)
    @name = name
    @capacity = capacity 
    @guests = guests
  end

  def room_name(name)
    return @name
  end

  def room_capacity(capacity)
    return @capacity
  end

  def increase_guests(guests)
    @guests += guests
  end

end