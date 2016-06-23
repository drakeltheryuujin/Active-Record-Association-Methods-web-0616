class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Song.all.map do |genres|
      genres.genre
    end.first
  end

  def song_count
    Song.all.count
  end

  def genre_count
    Song.all.map do |genres|
      genres.genre_id
    end.size
  end
end
