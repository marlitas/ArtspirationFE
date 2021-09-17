require 'rails_helper'
require_relative './web_mock_stubs'

RSpec.describe 'User Services' do
  describe 'repo users' do
    it 'returns the user data' do
      stub = WebmockStubs.mock_user
      stub_request(:get, 'https://www.localhost:3000/api/v1/users/1')
      .to_return(status: 200, body: stub, headers: {})

      user = UsersFacade.get_user(1)

      expect(user.name).to eq('Big Chungus')
      expect(user.email).to eq('bigchungus@gmail.com')
    end
  end
  describe 'repo artworks' do
    it 'returns liked artworks' do
      stub = WebmockStubs.mock_artworks
      stub_request(:get, 'https://www.localhost:3000/api/v1/users/1/rated_art')
      .to_return(status: 200, body: stub, headers: {})

      artworks = ArtworksFacade.get_rated_art(1)

      expect(artworks[0].title).to eq('Campbells')
      expect(artworks[1].title).to eq('Violin')
      expect(artworks[2].title).to eq('Monroe')
    end
  end
end
