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

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) # If the song exists in our 'all', a truthy value will be returned. If it's true...
      self.find_by_name(name) # We then return the Song object once the title is put in our find_by_name method
    else # But if our find_by_name returns a falsey ('nil') value, indicating the song is not in our array...
      self.create_by_name(name) # We call the create_by_name method to save that song and title.
    end
    # Alternative Solution
    # self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    @@all.sort {|a,b| a.name <=> b.name}
  end

  def self.new_from_filename(filename)
    song = self.new

    file = filename.split(" - ")
    artist_name = file[1]
    name = file[0]

    


  end

end
