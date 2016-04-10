require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do
  describe "GET #index" do
    it "assigns all artists as @artists and renders the index template" do
      artist = create(:artist)

      get(:index)

      expect(assigns(:artists)).to eq([artist])
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "assigns the requested artist as @artist and renders show template" do
      artist = create(:artist)

      get :show, {:id => artist.to_param}

      expect(assigns(:artist)).to eq(artist)
      expect(response).to render_template("show")
    end
  end

  describe "GET #new" do
    it "assigns a new artis as @artist" do

      get :new

      expect(assigns(:artist)).to be_a_new(Artist)
    end
  end

  describe "GET #edit" do
    it "assigns the requested artist as @artist" do
      artist = create(:artist)

      get :edit, {:id => artist.to_param}

      expect(assigns(:artist)).to eq(artist)
    end
  end

end
