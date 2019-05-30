class Artist
	attr_accessor :name, :songs
	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@@all << self
	end

	def add_song(song)
		@songs << song
		song.artist = self
	end

	def add_song_by_name(song)
		newsong = Song.new(song)
		@songs << newsong
		newsong.artist = self
	end

	def self.all
		@@all
	end

	def self.song_count
		count = 0
		self.all.each do |artist|
			count += artist.songs.count
		end
		count
	end
end