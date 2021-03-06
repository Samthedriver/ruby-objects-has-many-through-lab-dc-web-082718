class Genre

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)
    @songs << song
  end

  def songs
    Song.all.select do |song|
      if song.genre == self
        self
      end
    end
  end

  def artists
    Song.all.map do |song|
      song.artist
    end
  end

end
