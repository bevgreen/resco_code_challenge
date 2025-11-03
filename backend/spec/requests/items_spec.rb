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
  describe "POST /api/v1/items" do
    let(:valid_params) do
      {
        item: {
          name: "New Toy",
          description: "A fun new toy",
          status: "Available",
          image: "toy.png"
        }
      }
    end

    let(:invalid_params) do
      {
        item: {
          name: "",
          description: "",
          status: "Lost"
        }
      }
    end

    it "creates a new item with valid params" do
      expect {
        post "/api/v1/items", params: valid_params
      }.to change(Item, :count).by(1)

      json = JSON.parse(response.body)
      expect(json["name"]).to eq("New Toy")
      expect(json["number"]).to be > 0
      expect(response).to have_http_status(:created)
    end

    it "does not create an item with invalid params" do
      expect {
        post "/api/v1/items", params: invalid_params
      }.not_to change(Item, :count)

      json = JSON.parse(response.body)
      expect(response).to have_http_status(:unprocessable_content)
      expect(json["errors"]).to include(/can't be blank|is not included in the list/)
    end
  end
  describe "POST /api/v1/items" do
    let(:valid_params) do
      {
        item: {
          name: "Bird Food",
          description: "Healthy seeds",
          status: "Available",
          image: "bird_food.png"
        }
      }
    end

    let(:invalid_params) do
      {
        item: {
          name: "",
          description: "",
          status: "Lost"
        }
      }
    end

    it "creates a new item with valid params" do
      expect {
        post "/api/v1/items", params: valid_params
      }.to change(Item, :count).by(1)

      expect(response).to have_http_status(:created)
      json = JSON.parse(response.body)
      expect(json["name"]).to eq("Bird Food")
    end

    it "does not create an item with invalid params" do
      expect {
        post "/api/v1/items", params: invalid_params
      }.not_to change(Item, :count)

      expect(response).to have_http_status(:unprocessable_content)
      json = JSON.parse(response.body)
      expect(json["errors"]).to include("Name can't be blank", "Description can't be blank", "Status is not included in the list")
    end
  end
end
