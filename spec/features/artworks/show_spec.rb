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

    xit 'shows rating that user gave and option to unlike' do
      expect(page).to have_content("Added to Liked")

      art_response_stub = WebmockStubs.mock_artworks_removed_liked
      stub_request(:get, 'https://www.localhost:3000/api/v1/users/1/rated_art')
      .to_return(status: 200, body: art__response_stub, headers: {})

      click_on('Remove from Liked')
      expect(current_path).to eq('/dashboard/artworks')
      expect(page).to_not have_content(@artworks[0].title)
      expect(page.all(:css, '.art').count).to eq(2)
    end

    xit 'asks user to rate if no rating given' do

    end

    describe 'links' do
      xit 'links to artists external webpage' do
        find("a[href='#{@artworks[0].artist_url}']")
      end
    end
  end
end
