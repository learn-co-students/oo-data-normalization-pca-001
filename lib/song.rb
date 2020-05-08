require "pry"
class Song
  attr_accessor :title, :artist

  def slugify
    artist_with_song = "#{@artist.name} - #{@title}"
    slug = @title.downcase.tr(" ", "_").to_s

    file = Tempfile.new([slug, ".txt"], "tmp")
    file.write(artist_with_song)
    file.close
    # File.open("./tmp/#{slug}.txt", "w") { |f| f.write artist_with_song }
  end
end
