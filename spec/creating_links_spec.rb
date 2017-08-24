require 'spec_helper'
require_relative '../app/models/link.rb'
require 'database_cleaner'
# require_relative '../app.rb'

feature 'creating links' do
	
scenario 'I can add links from a form' do
visit '/links'
click_button "Add a link"
fill_in('title', :with => "Makers")
fill_in('url', :with => "www.makers.com")
click_button "Add a link"

within 'ul#links' do
	expect(page).to have_content "Title: Makers URL: www.makers.com"
		end
	end	
end


