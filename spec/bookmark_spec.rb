require 'bookmark'

describe Bookmark do
    it 'returns a list of bookmarks' do
      bookmark_list = Bookmark.all
      expect(bookmark_list).to include("http://www.makersacademy.com", "http://www.twitter.com", "http://www.google.com", "http://www.destroyallsoftware.com")
    end
end
