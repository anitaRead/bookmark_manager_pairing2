require 'pg'

feature 'Viewing bookmarks' do
  scenario 'visit index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'user can view bookmarks' do

    Bookmark.create(title: 'makers', url: "http://www.makersacademy.com")
    Bookmark.create(title: 'destroy', url: "http://www.destroyallsoftware.com")
    Bookmark.create(title: 'google', url: "http://www.google.com")

    visit('/bookmarks')

    expect(page).to have_link('makers', href: 'http://www.makersacademy.com')
    expect(page).to have_link('google', href: 'http://www.google.com')
    expect(page).to have_link('destroy', href: 'http://www.destroyallsoftware.com')
  end
end



