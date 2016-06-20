class Guest

attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def pay_for_song(wallet)
    @wallet += wallet
  end

end