require 'rails_helper'

# As a user
# Given that playlists exist in the database
# When I visit the playlists index
# Then I should see each playlist's name
# And each name should link to that playlist's individual page

RSpec.feature "User views all playlists" do
  scenario "they see the names of each playlist" do
    playlists = create_list(:playlist_with_songs, 2)

    visit playlists_path

    playlists.each do |playlist|
      expect(page).to have_link playlist.name, href: playlist_path(playlist)
    end
  end
end
