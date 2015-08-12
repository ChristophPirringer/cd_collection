require('rspec')
require('cd_organizer')

describe(CD) do

  before() do
    CD.clear()
  end

  describe('#album_name')do
    it('process user input and returns name of the album') do
      test_album = CD.new("Ryan's best ballads", "Ryan")
      expect(test_album.album_name()).to(eq("Ryan's best ballads"))
    end
  end

  describe('#artist')do
  it('process user input and returns artist') do
    test_album = CD.new("Ryan's best ballads", "Ryan")
    expect(test_album.artist()).to(eq("Ryan"))
  end
end

end
