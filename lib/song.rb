class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self # We are calling the class 'all' method through this instance
  end

  def self.create
    song = self.new # This line instantiates our song.
    song.save # We call the save method to save our song on this line.

    song # Finally, we return the new song that was just created.
  end

  def self.new_by_name(name)
    song = self.new # This line instantiates our song.
    song.name = name # Then, with dot notation, set song.name equal to our name variable.

    song # Finally, as before, we return our song.
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name

    song.save
    song
  end
end
