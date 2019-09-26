class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new # This line instantiates our song.
    song.save # We call the save method to save our song on this line.

    song # Finally, we return the new song that was just created.
  end

  def self.new_by_name(song)

  end

end
