class ItemsController < ApplicationController

  BACKEND_URL = ENV['BACKEND_URL'] || "http://localhost:3000/api/v1/items"

  def index
    response = Faraday.get(BACKEND_URL)
    @items = JSON.parse(response.body)
  end

  def show
    response = Faraday.get("#{BACKEND_URL}/#{params[:id]}")
    @item = JSON.parse(response.body)
  end

  def new
    # just renders the form
  end

  def create
      response = Faraday.post(BACKEND_URL) do |req|
      req.headers['Content-Type'] = 'application/json'
      req.body = {
        item: {
          name: params[:item][:name],
          description: params[:item][:description],
          status: params[:item][:status],
          image: params[:item][:image]
        }
      }.to_json
    end

    if response.success?
      flash[:notice] = "Item successfully added!"
      redirect_to new_item_path
    else
      flash[:alert] = "Failed to add item. Please try again."
      redirect_to new_item_path
    end
  end
end
