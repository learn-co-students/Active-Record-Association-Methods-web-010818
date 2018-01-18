class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    count = 0
    self.songs.each do |s|
      count += 1
    end
    count
  end

  def artist_count
    # return the number of artists associated with the genre
    count = 0
    self.artists.each do |a|
      count+= 1
    end
    count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    names = []
    self.artists.each do |a|
      names << a.name
    end
    names
  end
end
