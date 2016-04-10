require 'rails_helper'

RSpec.feature "User can delete existing artist" do
  scenario "they delete an artist and when redirected index do not see artist name" do
    artist = Artist.create(name: "Bob Marley", image_path:"http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path(artist)
    click_on "Delete"

    expect(current_path).to eq artists_path
    expect(page).to_not have_content artist.name
    expect(page).to_not have_css("img[src=\"#{artist.image_path}\"]")
  end
end
