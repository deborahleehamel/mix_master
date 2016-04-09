require 'rails_helper'

RSpec.feature "User views all artists" do
  scenario "they see a page with all artists" do
    artist1 = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    artist2 = Artist.create(name: "Bob Dylan", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artists_path
    expect(page).to have_link artist1.name, href: artist_path(artist1)
    expect(page).to have_link artist2.name, href: artist_path(artist2)

  end
end
