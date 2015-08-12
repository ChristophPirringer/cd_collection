class CD

  @@organizer = []

  def initialize(album_name, artist)
    @album_name = album_name
    @artist = artist
  end

  def album_name
    @album_name
  end

  define_singleton_method(:clear) do
    @@organizer = []
  end

end
