require 'bookmark'

describe Bookmark do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
  
      
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.makersacademy.com', 'http://www.google.com', 'http://www.destroyallsoftware.com')
    end

    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.sayhi.com')
      
      expect(Bookmark.all).to include 'http://www.sayhi.com'
    end


end
