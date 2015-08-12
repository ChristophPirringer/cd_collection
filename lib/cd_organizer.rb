class CD

  @@organizer = []

  def initialize(album_name, artist)
    @album_name = album_name
    @artist = artist
    @id = @@organizer.length().+(1)
  end

  def id
    @id
  end

  def album_name
    @album_name
  end

  def artist
    @artist
  end

  define_singleton_method(:clear) do
    @@organizer = []
  end

  define_singleton_method(:all) do
    @@organizer
  end

  def save
    @@organizer.push(self)
  end

end
