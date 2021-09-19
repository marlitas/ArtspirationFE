class Artwork
  attr_reader :id,:user_id, :url, :title, :artist, :artist_url, :liked

  def initialize(artwork)
    @id = artwork[:id]
    @user_id = artwork[:attributes][:user_id]
    @url = artwork[:attributes][:url]
    @title = artwork[:attributes][:title]
    @artist = artwork[:attributes][:artist]
    @artist_url = artwork[:attributes][:artist_url]
    @liked = artwork[:attributes][:liked]
  end

end
