class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.last.id
  end

  def artist_count
    self.artists.last.id
  end

  def all_artist_names

    self.artists.all.collect do |obj|
      obj.name
    end
    # return an array of strings containing every musician's name
  end
end
