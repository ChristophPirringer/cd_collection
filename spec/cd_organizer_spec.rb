require('rspec')
require('cd_organizer')
require('collection')

describe(CD) do

  before() do
    CD.clear()
    @test_album = CD.new("Ryan's best ballads", "Ryan")

  end

  describe('#album_name')do
    it('process user input and returns name of the album') do
      # test_album = CD.new("Ryan's best ballads", "Ryan")
      expect(@test_album.album_name()).to(eq("Ryan's best ballads"))
    end
  end

  describe('#artist')do
    it('process user input and returns artist') do
      # test_album = CD.new("Ryan's best ballads", "Ryan")
      expect(@test_album.artist()).to(eq("Ryan"))
    end
  end

  describe("#save") do
    it('save entries into array') do
      # test_album = CD.new("Ryan's best ballads", "Ryan")
      @test_album.save()
      expect(CD.all()).to(eq([@test_album]))
    end
  end

  describe("#id") do
    it("gives each album an id by entry into array") do
      @test_album.save()
      expect(@test_album.id()).to(eq(1))
    end
  end

  describe('.search') do
    it('searches for specific album in array and returns album_name') do
      @test_album.save()
      expect(CD.search(@test_album.id())).to(eq(@test_album))
    end
  end
end





describe(Collection) do

  before() do
    Collection.clear_collection()
    @test_collection = Collection.new("My collection")
  end

  describe('#collection_name') do
    it('returns the name of the collection') do
      expect(@test_collection.collection_name()).to(eq("My collection"))
    end
  end

  describe('#collection_save') do
    it('saves collection to array') do
      @test_collection.collection_save()
      expect(Collection.all_collection()).to(eq([@test_collection]))
    end
  end

  describe("#collection_id") do
    it("returns the id of the collection") do
      @test_collection.collection_save()
      expect(@test_collection.collection_id()).to(eq(1))
    end
  end

  describe('#albums') do
    it('returns empty array of cds for the collection') do
      expect(@test_collection.albums()).to(eq([]))
    end
  end

  describe("#add_albums") do
    it("adds the user input into the array of albums in the collection") do
      @test_album = CD.new("Ryan's best ballads", "Ryan")
      @test_collection.add_albums(@test_album)
      expect(@test_collection.albums()).to(eq([@test_album]))
    end
  end

  describe('.collection_find') do
    it('finds the collection by id number') do
      @test_collection.collection_save()
      @test_collection2 = Collection.new("Christoph down and dirty").collection_save()
      expect(Collection.collection_find(@test_collection.collection_id())).to(eq(@test_collection))
    end
  end


end
