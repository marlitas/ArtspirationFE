require 'rails_helper'

RSpec.describe Artwork do
  before(:each) do
    @data = {
      id: '1',
      type: 'artwork',
      attributes: {
        user_id: '1',
        url: 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
        title: 'Campbells',
        artist: 'Big Pharma',
        artist_url: 'https://en.wikipedia.org/wiki/Vincent_van_Gogh',
        liked: 'true'
      }
    }
  end

  it 'exists' do
    expect(Artwork.new(@data)).to be_an_instance_of(Artwork)
  end

  it 'has attributes' do
    artwork = Artwork.new(@data)
    expect(artwork.title).to eq('Campbells')
    expect(artwork.user_id).to eq('1')
    expect(artwork.url).to eq('https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg')
    expect(artwork.id).to eq('1')
    expect(artwork.artist).to eq('Big Pharma')
    expect(artwork.artist_url).to eq('https://en.wikipedia.org/wiki/Vincent_van_Gogh')
    expect(artwork.liked).to eq('true')
  end

  it 'can default liked attribute' do
    other_data = {
      id: '1',
      type: 'artwork',
      attributes: {
        url: 'https://d32dm0rphc51dk.cloudfront.net/46PghnvIBjrN25-_kPPwQA/big_and_tall.jpg',
        title: 'Campbells',
        artist: 'Big Pharma',
        artist_url: 'https://en.wikipedia.org/wiki/Vincent_van_Gogh'
      }
    }
    artwork = Artwork.new(other_data)
    expect(artwork.liked).to eq('unrated')
  end
end
