require 'rails_helper'
require './spec/services/web_mock_stubs'

RSpec.describe 'Artworks Show' do
  describe 'user' do
    before(:each) do
      user_stub = WebmockStubs.mock_user
      stub_request(:get, 'https://www.localhost:3000/api/v1/users/1')
      .to_return(status: 200, body: user_stub, headers: {})
      art_stub = WebmockStubs.mock_artwork_liked
      stub_request(:get, 'https://www.localhost:3000/api/v1/users/1/rated_art/1')
      .to_return(status: 200, body: art_stub, headers: {})

      @user = UsersFacade.get_user(1)
      @artwork = ArtworksFacade.get_art(1, @user.id)
      allow_any_instance_of(ApplicationController).to receive(:current_user)
      .and_return(@user)

      visit "/dashboard/artworks/#{@artwork.id}"
    end

    it 'shows enlarged image with title and artist' do
      expect(page).to have_content(@artwork.title)
      expect(page).to have_content(@artwork.artist)
      find("img[src='#{@artwork.url}']")
    end

    it 'shows rating that user gave and option to unlike' do
      expect(page).to have_content("Added to Liked")

      art_update_stub = WebmockStubs.mock_artwork_not_liked
      stub_request(:patch, 'https://www.localhost:3000/api/v1/users/1/rated_art/1')
      .to_return(status: 200, body: art_update_stub, headers: {})

      art_response_stub = WebmockStubs.mock_artwork_not_liked
      stub_request(:get, 'https://www.localhost:3000/api/v1/users/1/rated_art/1')
      .to_return(status: 200, body: art_response_stub, headers: {})

      click_on('Remove')
      expect(current_path).to eq("/dashboard/artworks/#{@artwork.id}")
      expect(page).to_not have_content('Added to Liked')
      expect(page).to have_content('Removed from Liked')
      expect(page).to have_content('Add to Liked')
    end

    it 'asks user to rate if no rating given' do
      art_update_stub = WebmockStubs.mock_artwork_liked
      stub_request(:patch, 'https://www.localhost:3000/api/v1/users/1/rated_art/1')
      .to_return(status: 200, body: art_update_stub, headers: {})

      art_response_stub = WebmockStubs.mock_artwork_unrated
      stub_request(:get, 'https://www.localhost:3000/api/v1/users/1/rated_art/1')
      .to_return(status: 200, body: art_response_stub, headers: {})

      visit "/dashboard/artworks/#{@artwork.id}"

      expect(page).to have_content("Like")
      expect(page).to have_content("Dislike")

      art_response_stub_2 = WebmockStubs.mock_artwork_liked
      stub_request(:get, 'https://www.localhost:3000/api/v1/users/1/rated_art/1')
      .to_return(status: 200, body: art_response_stub_2, headers: {})

      click_on('Like')
      expect(current_path).to eq("/dashboard/artworks/#{@artwork.id}")
      expect(page).to have_content('Added to Liked')
    end

    describe 'links' do
      it 'links to artists external webpage' do
        find("a[href='#{@artwork.artist_url}']")
      end

      it 'links back to artwork index' do
        user_stub = WebmockStubs.mock_user
        stub_request(:get, 'https://www.localhost:3000/api/v1/users/1')
        .to_return(status: 200, body: user_stub, headers: {})
        art_stub = WebmockStubs.mock_artworks
        stub_request(:get, 'https://www.localhost:3000/api/v1/users/1/rated_art')
        .to_return(status: 200, body: art_stub, headers: {})

        click_on 'Liked Artworks'

        expect(current_path).to eq('/dashboard/artworks')
      end
    end
  end
end
