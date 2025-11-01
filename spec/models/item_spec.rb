require 'rails_helper'

RSpec.describe Item, type: :model do
    context 'validations' do
    it "can be created with valid attributes" do
        item = Item.new(
        name: "Dog Food",
        description: "Nutritious dog food",
        number: 10,
        status: "Available",
        image: "dog_food.png"
        )
        expect(item).to be_valid
    end

     it 'is invalid without a name' do
      item = Item.new(
        name: nil,                    
        description: 'A fluffy kitten',
        number: 1,
        status: 'Available'
      )

      expect(item).not_to be_valid   
      expect(item.errors[:name]).to include("can't be blank")
    end
end
end
