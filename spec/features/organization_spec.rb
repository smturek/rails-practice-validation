require 'rails_helper'

feature 'People' do

  scenario 'User tries to create a new organization with no name' do
    visit root_path
    click_on "Organization"
    click_on "New Organization"
    click_on "Create Organization"
    expect(page).to have_content("Name can't be blank")
  end

end
