class Api::V1::ItemsController < ApplicationController
  def index
    render json: {
      example_key: {
        example_nested_key: "It worked!"
      },
      example_array_key: [
        "Array item 1", "Array item 2"
      ]
    }
  end
end