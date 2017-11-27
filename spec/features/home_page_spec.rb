# frozen_string_literal: true

require 'rails_helper'

<<<<<<< HEAD
feature 'index page' do
  scenario 'displays default rails' do
    visit '/'
    expect(page).to have_content('Hello')
=======
feature "index page" do
  scenario "displays cm landing page" do
    visit "/"
    expect(page).to have_content('Dashboard')
>>>>>>> landing-page
  end
end
