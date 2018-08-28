class Artist 
  attr_accessor :name, :songs
  
  
  @@all = []
  
  def self.all
    @@all
  end 
    
  def save
    @@all << self
  end 
  
<<<<<<< HEAD
=======
 
  
  

  
>>>>>>> 3ab31ff8dd74671dec8a0edd77afa936a76b5b0e
  def initialize(specific_name)
    @name = specific_name
    @songs = []
  end 
  
  def add_song(new_song)
    @songs << new_song
  end 
  

  
  def self.find_or_create_by_name(some_name)
<<<<<<< HEAD
    self.find(some_name) || self.create(some_name)
  end
  
  def self.find(name)
    self.all.find{|a| a.name == name}
  end 
  
  def self.create(name)
    self.new(name).tap {|artist| artist.save}
=======
    if @@all.any?{|x| x.name == some_name}
      x
    else
      new_artist = Artist.new(some_name)
      new_artist
    end 
>>>>>>> 3ab31ff8dd74671dec8a0edd77afa936a76b5b0e
  end 
      

    
  
  
  
  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end 
  
  
  
end 