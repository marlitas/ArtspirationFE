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
      allow_any_instance_of(ApplicationController).to receive(:current_user)
      .and_return(@user)
    end

    it 'sees all art they have liked' do
      visit '/dashboard/artworks'

      expect(page).to have_content("#{@user.name}'s Favorite Artwork")
      expect(page.all(:css, '.art').count).to eq(3)
    end

    it 'sees the titles, artists, and jpeg render for each artwork' do
      visit '/dashboard/artworks'

      within("##{@artworks[0].id}") do
        find("img[src='#{@artworks[0].url}']")
        expect(page).to have_content(@artworks[0].title)
        expect(page).to have_content(@artworks[0].artist)
      end

      within("##{@artworks[1].id}") do
        find("img[src='#{@artworks[1].url}']")
        expect(page).to have_content(@artworks[1].title)
        expect(page).to have_content(@artworks[1].artist)
      end

      within("##{@artworks[2].id}") do
        find("img[src='#{@artworks[2].url}']")
        expect(page).to have_content(@artworks[2].title)
        expect(page).to have_content(@artworks[2].artist)
      end
    end

    xit 'sees alt text if image does not render' do
      visit '/dashboard/artworks'
      #test final alt text decision
    end

    describe 'links' do
      it 'can link to artwork show page' do
        visit '/dashboard/artworks'

        within("##{@artworks[0].id}") do
          click_on(@artworks[0].title)
        end

        expect(current_path).to eq("/dashboard/artworks/#{@artworks[0].id}")
      end

      it 'can link to artist webpage' do
        visit '/dashboard/artworks'

        within("##{@artworks[0].id}") do
          find("a[href='#{@artworks[0].artist_url}']")
        end
      end
    end
  end
end
