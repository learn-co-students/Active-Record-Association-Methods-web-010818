class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.genres.first
  end

  def song_count
    #return the number of songs associated with the artist
    count = 0
    self.songs.each do |s|
      count += 1
    end
    count
  end

  def genre_count
    #return the number of genres associated with the artist
    count = 0
    self.genres. each do |g|
      count += 1
    end
    count 
  end
end
