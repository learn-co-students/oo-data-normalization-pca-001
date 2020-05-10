class Song
  require "tempfile"
  attr_accessor :title, :artist

  def slugify
    file = Tempfile.new([title.downcase.gsub(" ", "_"), ".txt"], "tmp")
    file.write(@artist.name + " - " + title)
    file.close
  end
end
