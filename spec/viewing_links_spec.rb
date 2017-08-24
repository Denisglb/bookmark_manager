require 'spec_helper'
require_relative '../app/models/link.rb'
# require_relative '../app.rb'

feature 'Viewing links' do
	
scenario 'I can see exciting links on the links page' do
Link.create(url: 'http://www.makersacademy.com', title: "Makers Academy")

visit '/links'

expect(page.status_code).to eq 200

within 'ul#links' do
	expect(page).to have_content('Makers Academy')
	# link = Link.first(title: "Makers Academy")
	# link.destroy
		end
	end	
end