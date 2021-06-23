require 'pg'

feature 'Adding a new bookmark' do
    scenario 'user can add bookmark to bookmark manager' do
        visit("/bookmarks/new")
        fill_in('url', with: 'http://www.bing.com')
        click_button('submit')
        expect(page).to have_content 'http://www.bing.com'
    end

end
