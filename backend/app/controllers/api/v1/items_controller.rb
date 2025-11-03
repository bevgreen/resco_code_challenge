class Api::V1::ItemsController < ApplicationController
  def index
    render json: Item.all
  end

  def show
    item = Item.find_by(id: params[:id])
    if item
        render json: item
    else
        render json: { error: "Item not found" }, status: :not_found
    end
  end

  def create
     item = Item.new(item_params)

    if item.save
      render json: item, status: :created
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_content
    end
  end

  private
    def item_params
      params.require(:item).permit(:name, :description, :number, :status, :image)
    end
end