require 'rails_helper'

RSpec.describe "Items API", type: :request do
  before do
    @item1 = Item.create!(name: "Dog Food", description: "Tasty food", number: 5, status: "Available")
    @item2 = Item.create!(name: "Cat Toy", description: "Fun toy", number: 3, status: "Available")
  end

  describe "GET /api/v1/items" do
    it "returns all items" do
      get "/api/v1/items"
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(2)
      expect(json.first["name"]).to eq("Dog Food")
    end
  end

  describe "GET /api/v1/items/:id" do
    it "returns a single item" do
      get "/api/v1/items/#{@item1.id}"
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json["name"]).to eq("Dog Food")
    end

    it "returns 404 if the item does not exist" do
        get "/api/v1/items/99999"  # an ID that doesn't exist
        expect(response).to have_http_status(:not_found)
        json = JSON.parse(response.body)
        expect(json["error"]).to eq("Item not found")
    end
  end
end
