class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Song.all.map do |songs|
      songs.genre_id
    end.size
  end

  def artist_count
    Song.all.map do |songs|
      songs.artist_id
    end.size
  end

  def all_artist_names
    Artist.all.map do |names|
      names.name
    end
  end
end
