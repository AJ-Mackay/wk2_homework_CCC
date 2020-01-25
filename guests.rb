class Guest

attr_reader :name, :favourite_song
attr_accessor :wallet

def initialize(name, wallet, favourite_song)
  @name = name
  @wallet = wallet
  @favourite_song = favourite_song
end

def remove_fees(entrance_fee)
  @wallet -= entrance_fee
  return @wallet
end

def favourite_song_playing(song_playing, guest)
 if song_playing == guest.favourite_song
   return "Whoo!"
 end 
end

end
