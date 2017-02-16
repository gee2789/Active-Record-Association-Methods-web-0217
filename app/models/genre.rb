class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.size
  end

  def artist_count
    self.artists.size
    # return the number of artists associated with the genre
  end

  def all_artist_names
    x = self.artists
    x.collect do |artists|
      artists.name
      # return an array of strings containing every musician's name
    end
  end
end
