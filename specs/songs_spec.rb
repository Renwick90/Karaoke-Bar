require('minitest/autorun')
require_relative('../songs.rb')

class Songs < Minitest::Test


  def setup
    @song1 = Song.new("The Temptations", "My Girl")
    @song2 = Song.new("Bill Withers", "Use Me")
    @song3 = Song.new("Louis Armstrong", "Kiss to Build a Dream on")
    @song4 = Song.new("Nina Simone", "Sinnerman")
    @song5 = Song.new("Sam Cooke", "Wonderful World")
    @song6 = Song.new("James Brown", "The Payback")
    @song7 = Song.new("Etta James", "At Last")
    @song8 = Song.new("Dusty Springfield", "Son of a Preacher Man")
    @song9 = Song.new("Marvin Gaye", "Sexual Healing")
  end

  def test_song_artist
    assert_equal("Sam Cooke", @song5.artist())
  end
end