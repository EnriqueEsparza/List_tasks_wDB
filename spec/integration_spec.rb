require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exception, false)
require 'pry'

describe('adding a new list', {:type => :feature}) do
    it('allows a user to click a list to see the tasks and details for it') do
      visit('/')
      click_link("Add New list")
      fill_in('name', :with => 'Epicodus Work')
      click_button('Add List')
      expect(page).to have_content('Success!')
    end
  end
