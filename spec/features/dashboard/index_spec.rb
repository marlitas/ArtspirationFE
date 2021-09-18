require 'rails_helper'
require './spec/services/web_mock_stubs'

RSpec.describe 'dashboard' do
  before(:each) do
    stub = WebmockStubs.mock_user
    stub_request(:post, "https://www.localhost:3000/api/v1/users")
    .to_return(status: 204, body: stub, headers: {})
    stub_request(:get, "https://www.localhost:3000/api/v1/users/:id")
    .to_return(status: 200, body: stub, headers: {})
    Rails.application.env_config["devise.mapping"] = Devise.mappings[:user]
    Rails.application.env_config["omniauth.auth"] = OmniAuth.config.mock_auth[:google_oauth2]
  end

  it 'can visit dashboard' do
    visit root_path
    click_on('Login with Google')
    expect(current_path).to eq('/dashboard')
  end

  it 'displays the users recommended art'

  it 'displays the users favorites' do
    visit root_path
    click_on('Login with Google')

    save_and_open_page
    expect(page).to have_content('Monroe')
    expect(page).to have_content('Violin')
    expect(page).to have_content('Campbells')
  end

  it 'displays username' do
    visit root_path
    click_on('Login with Google')

    expect(page).to have_content("Big Chungus")
  end
end
