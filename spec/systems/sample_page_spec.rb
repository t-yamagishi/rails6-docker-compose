require 'rails_helper'

RSpec.describe 'sammple page', type: :system, js: true do
  it do
    visit root_path
    expect(page).to have_content 'Main'

    click_on 'click!'
    expect(page).to have_content 'count = 1'
  end
end
