class Song
  attr_accessor :title, :artist
  def slugify
    file_name = @title.split(' ').collect{ |w| w.downcase }.join("_")
    file_write = "#{@artist.name} - #{@title}"
    file = File.open("./tmp/#{file_name}.txt", "w")
    file.puts(file_write)
    file.close
  end
end
