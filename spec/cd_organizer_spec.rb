require('rspec')
require('cd_organizer')

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

end
