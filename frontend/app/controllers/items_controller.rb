class ItemsController < ApplicationController

  BACKEND_URL = "http://localhost:3000/api/v1/items"
  def index
    response = Faraday.get(BACKEND_URL)
    @items = JSON.parse(response.body)
  end

  def show
    response = Faraday.get("#{BACKEND_URL}/#{params[:id]}")
    @item = JSON.parse(response.body)
  end
end
