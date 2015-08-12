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

  define_singleton_method(:search) do |album_id|
    found_album = nil
    @@organizer.each() do |album|
      if album.id() == album_id.to_i()
        found_album = album
      end
    end
    found_album
  end

end
