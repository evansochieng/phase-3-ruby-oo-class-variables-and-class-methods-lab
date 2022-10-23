# Define Song class
class Song
    # macros for manipulating the instance properties
    attr_accessor :name, :artist, :genre

    # class variables
    @@count = 0
    @@genres = []
    @@artists = []

    # Initilaize the properties
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    # Class methods
    # Song.count method
    def self.count
        @@count
    end

    # Song.genres method
    def self.genres
        # return only unique genres
        uniq_genres = @@genres.uniq
        uniq_genres
    end

    # Song.artists method
    def self.artists
        # return only unique artists
        uniq_artists = @@artists.uniq
        uniq_artists
    end

    # Song.genre_count method
    def self.genre_count
        # create an empty hash for the hashes
        genres_tally = {}

        # loop over the array of genres, populate a hash with the key/value pairs
        # check if key already exists or not
        @@genres.each do |genre|
            if genres_tally.keys.include?(genre)
                genres_tally[genre] += 1 #if it exists increase count by 1 
            else
                genres_tally[genre] = 1 # if it doesn't exist, initialize count to 1
            end
        end

        # return the genres_tally hash
        genres_tally
    end

    # Song.artist_count
    def self.artist_count
        # use tally method to tally the artists
        # return counts of occurrences of every element
        artists_tally = @@artists.tally
        artists_tally
    end
end