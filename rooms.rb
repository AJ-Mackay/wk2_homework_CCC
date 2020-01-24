class Room

  attr_accessor :number_of_guests, :capacity, :song_playing, :bar_tab

  def initialize(number_of_guests, capacity)
    @number_of_guests = number_of_guests
    @capacity = capacity
    @song_playing = nil
    @bar_tab = 0
  end

  def add_guests(guests_to_be_added)
    new_guest_count = @number_of_guests + guests_to_be_added
    if new_guest_count <= @capacity
      @number_of_guests = new_guest_count
    else
      return "Sorry the room is full"
    end
  end

  def remove_guests(guests_to_be_removed)
    @number_of_guests -= guests_to_be_removed
    return @number_of_guests
  end

  def play_song(song)
    @song_playing = song.title
  end

end
