class Collection

  @@collections = []

  def initialize(collection_name)
    @collection_name = collection_name
    @collection_id = @@collections.length().+(1)
    @albums = []
  end

  def collection_name
    @collection_name
  end

  define_singleton_method(:all_collection) do
    @@collections
  end

  define_singleton_method(:clear_collection) do
    @@collections = []
  end

  def collection_save
    @@collections.push(self)
  end

  def collection_id
    @collection_id
  end

  def albums
    @albums
  end

  def add_albums(albums)
    @albums.push(albums)
  end

  define_singleton_method(:collection_find) do |identification|
    found_collection = nil
    @@collections.each() do |collection|
      if collection.collection_id() == identification.to_i
        found_collection = collection
      end
    end
    found_collection
  end


end
