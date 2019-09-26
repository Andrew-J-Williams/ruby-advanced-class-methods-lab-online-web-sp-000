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
    song = self.new # instantiation line
    song.name = name  # Assigns the song.name equal to the string entered

    song.save # Saves our song
    song # Returns our song
  end

  def self.find_by_name(song) # We use the 'find' method to search our 'all' array.
    @@all.find{|song_name| song_name.name == song} # We add .name to block variable to search for just the song names, then comparing to our song variable.
  end

  def self.find_or_create_by_name(song)


  end

end
