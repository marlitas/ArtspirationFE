require 'rails_helper'
require './spec/services/web_mock_stubs'

RSpec.describe 'index header' do
  before(:each) do
    stub_request(:post, 'https://www.localhost:3000/api/v1/users')
    .to_return(status: 200, body: WebmockStubs.mock_user, headers: {})

    visit root_path
    click_on('Login with Google')
  end
  it 'has login option with no user present' do
    expect(page).to have_content('Dashboard')
    expect(page).to have_content('Logout')
  end

  it 'can logout' do
    click_on 'Logout'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Login')

    expect(page).to_not have_content('Logout')
    expect(page).to_not have_content('Dashboard')
  end

  it 'can revisit home page for navbar' do
    click_on 'Home'
    expect(current_path).to eq(root_path)
  end

  it 'can visit users dashboard' do
    visit root_path

    click_on 'Dashboard'
    expect(current_path).to eq(dashboard_index_path)
  end
end
