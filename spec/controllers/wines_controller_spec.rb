# spec/models/wines_controller_spec.rb

require 'rails_helper'


RSpec.describe WinesController, type: :controller do
  login_user
  describe "GET index" do
    it "render the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "render the show template" do
      wine = Wine.create(name: "XX", price: 10000)
      get :show, params: {id: wine.id}
      expect(response).to render_template("show")
    end
  end
end