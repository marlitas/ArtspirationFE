require 'rails_helper'

RSpec.describe 'index' do
  it 'can send you to google oauth' do
    visit root_path

    expect(page).to have_content('Login with Google')
  end
end
