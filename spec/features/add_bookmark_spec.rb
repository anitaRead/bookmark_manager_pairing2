require 'pg'

feature 'Adding a new bookmark' do
    scenario 'user can add bookmark to bookmark manager' do
        visit("/bookmarks/new")
        fill_in('title', with: 'bing')
        fill_in('url', with: 'http://www.bing.com')
        click_button('submit')
        expect(page).to have_link('bing', href: 'http://www.bing.com')  
    end

end
