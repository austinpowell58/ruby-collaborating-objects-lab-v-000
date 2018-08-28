<<<<<<< HEAD

=======
require "pry"
>>>>>>> 3ab31ff8dd74671dec8a0edd77afa936a76b5b0e
class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end 
  
  def files
    Dir.entries(@path).select {|f| !File.directory? f}
  end 
  
  def import
    files.each do |file_name|
<<<<<<< HEAD
      Song.new_by_filename(file_name)
=======
      file_name.split(/[-.]/).collect do |string|
        string.strip
      end 
>>>>>>> 3ab31ff8dd74671dec8a0edd77afa936a76b5b0e
    end
  end 
  
  

end 