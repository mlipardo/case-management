require 'rails_helper'

feature "index page" do
  scenario "displays cm landing page" do
    visit "/"
    expect(page).to have_content('Dashboard')
  end
end
