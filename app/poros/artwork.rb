class Artwork
  attr_reader :id,:user_id, :url, :title, :artist

  def initialize(artwork)
    @id = artwork[:id]
    @user_id = artwork[:attributes][:user_id]
    @url = artwork[:attributes][:url]
    @title = artwork[:attributes][:title]
    @artist = artwork[:attributes][:artist]
  end

end
