# db/seeds.rb

Item.create!([
  {
    name: "Dog Chew Toy",
    description: "Durable chew toy for medium to large dogs.",
    number: 101,
    status: "Available",
    image: "https://example.com/images/dog_chew_toy.jpg"
  },
  {
    name: "Cat Scratching Post",
    description: "Tall scratching post for indoor cats to climb and scratch.",
    number: 102,
    status: "Available",
    image: "https://example.com/images/cat_scratching_post.jpg"
  },
  {
    name: "Bird Cage",
    description: "Spacious bird cage for small to medium birds.",
    number: 103,
    status: "Decommissioned",
    image: "https://example.com/images/bird_cage.jpg"
  },
  {
    name: "Fish Tank 20 Gal",
    description: "20-gallon freshwater fish tank with filter.",
    number: 104,
    status: "Expired",
    image: "https://example.com/images/fish_tank.jpg"
  },
  {
    name: "Rabbit Hutch",
    description: "Outdoor hutch for one or two rabbits.",
    number: 105,
    status: "Available",
    image: "https://example.com/images/rabbit_hutch.jpg"
  }
])
