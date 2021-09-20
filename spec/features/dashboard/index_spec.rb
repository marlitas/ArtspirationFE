require 'rails_helper'
require './spec/services/web_mock_stubs'

RSpec.describe 'dashboard' do
  before(:each) do
    stub = WebmockStubs.mock_user
    stub2 = WebmockStubs.mock_artwork_recommendations
    stub3 = WebmockStubs.mock_artwork
    stub_request(:post, "https://infinite-gorge-45482.herokuapp.com/api/v1/users")
    .to_return(status: 204, body: stub, headers: {})
    stub_request(:get, "https://infinite-gorge-45482.herokuapp.com/api/v1/users/:id")
    .to_return(status: 200, body: stub, headers: {})
    stub_request(:get, "https://infinite-gorge-45482.herokuapp.com/api/v1/users/1/recommendations")
    .to_return(status: 200, body: stub2, headers: {})
    stub_request(:get, "https://infinite-gorge-45482.herokuapp.com/api/v1/artworks/1")
    .to_return(status: 200, body: stub3, headers: {})
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
  end

  it 'can visit dashboard' do
    visit root_path
    click_on('Login with Google')
    expect(current_path).to eq('/dashboard')
  end

  it 'redirects you to root without a valid login' do
    visit dashboard_index_path

    expect(current_path).to eq(root_path)
    expect(page).to have_content('You must be logged in to visit that page.')
  end

  it 'displays the users recommended art' do
    visit root_path
    click_on('Login with Google')

    expect(page).to have_content('Roby Dwi Antono')
  end

  it 'displays the users favorites' do
    visit root_path
    click_on('Login with Google')

    expect(page).to have_content('Monroe')
    expect(page).to have_content('Violin')
    expect(page).to have_content('Campbells')
  end

  it 'displays username' do
    visit root_path
    click_on('Login with Google')

    expect(page).to have_content("Big Chungus")
  end

  it 'can click on liked artwork link' do
    visit root_path
    click_on('Login with Google')

    click_on('image-0')

    expect(current_path).to eq(dashboard_artwork_path(1))
  end

  it 'can click link for recommended art' do
    stub_request(:get, 'https://infinite-gorge-45482.herokuapp.com/api/v1/art/4')
    .to_return(status: 200, body: WebmockStubs.mock_artwork_recommendations, headers: {})

    visit root_path
    click_on('Login with Google')

    click_on('recommended art')

    expect(current_path).to eq(dashboard_artwork_path(4))
  end
end
