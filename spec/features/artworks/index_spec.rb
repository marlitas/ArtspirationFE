require 'rails_helper'
require './spec/services/web_mock_stubs'

RSpec.describe 'index' do
  describe 'user' do
    before(:each) do
      user_stub = WebmockStubs.mock_user
      stub_request(:get, 'https://www.localhost:3000/api/v1/users/1')
      .to_return(status: 200, body: user_stub, headers: {})
      art_stub = WebmockStubs.mock_artworks
      stub_request(:get, 'https://www.localhost:3000/api/v1/users/1/rated_art')
      .to_return(status: 200, body: art_stub, headers: {})

      @user = UsersFacade.get_user(1)
      @artworks = ArtworksFacade.get_rated_art(@user.id)
    end

    it 'sees all art they have liked' do
      visit '/dashboard/artworks'

      expect(page).to have_content("#{user.name}'s Favorite Artwork")
      expect(page).to have_selector('art', count: 3)
    end

    it 'sees the titles, artists, and jpeg render for each artwork' do
      visit '/dashboard/artworks'

      within("##{@artworks[0].id}") do
        expect(page).to have_css("img[src*=#{@artworks[0].url}]")
        expect(page).to have_content(@artworks[0].title)
        expect(page).to have_content(@artworks[0].artist)
      end

      within("##{@artworks[1].id}") do
        expect(page).to have_css("img[src*=#{@artworks[1].url}]")
        expect(page).to have_content(@artworks[1].title)
        expect(page).to have_content(@artworks[1].artist)
      end

      within("##{@artworks[2].id}") do
        expect(page).to have_css("img[src*=#{@artworks[2].url}]")
        expect(page).to have_content(@artworks[2].title)
        expect(page).to have_content(@artworks[2].artist)
      end

      it 'sees alt text if image does not render' do
        visit '/dashboard/artworks'
      end
    end

    describe 'links' do
      it 'can link to artwork show page' do

      end

      it 'can link to artist webpage' do

      end
    end
  end
end
