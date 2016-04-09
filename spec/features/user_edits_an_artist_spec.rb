require 'rails_helper'

RSpec.feature "User can edit an existing artist" do
  scenario "they see updated artist info" do
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

    artist1 = Artist.create(name: "Bob Marley", image_path: artist_image_path)
    visit artist_path(artist1)
    click_on "Edit"
    fill_in "artist_name", with: "Bob Dylan"
    click_on "Update Artist"

    expect(page).to have_content "Bob Dylan"
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end
end
