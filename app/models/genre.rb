class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    return self.songs.size
  end

  def artist_count
    # return the number of artists associated with the genre
    return self.songs.collect{|song| song.artist}.uniq.size
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    return self.songs.collect{|song| song.artist.name}
  end
end
