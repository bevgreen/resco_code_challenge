# db/seeds.rb
Item.delete_all
Item.create!([
  {
    name: "Dog Chew Toy",
    description: "Durable chew toy for medium to large dogs.",
    number: 101,
    status: "Available",
    image: "https://fbres.fivebelow.com/image/upload/t_large/f_webp/5bassets/prod-hts/spree/images/1880750/original/7460191-00_A.jpg"
  },
  {
    name: "Cat Scratching Post",
    description: "Tall scratching post for indoor cats to climb and scratch.",
    number: 102,
    status: "Available",
    image: "https://i5.walmartimages.com/seo/PetMaker-Gray-Cat-Sisal-Scratching-Post-Tower-3-Posts-2-Carpeted-Perches-Hanging-Ball-Mouse-Toy_ebf19db1-0256-470f-b1cf-6992a3fc886a.6bff9b24ccd3d977da9b2e37df646929.jpeg"
  },
  {
    name: "Bird Cage",
    description: "Spacious bird cage for small to medium birds.",
    number: 103,
    status: "Decommissioned",
    image: "https://m.media-amazon.com/images/I/91OpsB0K2AL.jpg"
  },
  {
    name: "Fish Tank 20 Gal",
    description: "20-gallon freshwater fish tank with filter.",
    number: 104,
    status: "Expired",
    image: "https://www.petsense.com/cdn/shop/products/015905178600.01_2000x.jpg?v=1744211506"
  },
  {
    name: "Rabbit Hutch",
    description: "Outdoor hutch for one or two rabbits.",
    number: 105,
    status: "Available",
    image: "https://m.media-amazon.com/images/I/71jsrU+Uj4L.jpg"
  },
  {
    name: "Dog Leash",
    description: "Strong and durable leash for daily walks.",
    number: 106,
    status: "Available",
    image: "https://assets.orvis.com/is/image/orvisprd/3JBP05DF24_W?wid=1280&src=is($object$:1-1)&qlt=85&resMode=sharp2&op_usm=1.75,0.3,2,0"
  },
  {
    name: "Cat Bed",
    description: "Soft, cozy bed for indoor cats.",
    number: 107,
    status: "Available",
    image: "https://i5.walmartimages.com/seo/DABEI-Cozy-Washable-Cat-Bed-For-Indoor-Cats-Soft-Mat-For-Small-And-Large-Cats-Perfect-Hideout-House-For-Your-Furry-Friend_835e2a78-7f65-425f-b052-65b13eeb027c.3a2e78c5306e4fa7fd9462def8fbec33.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF"
  },
  {
    name: "Hamster Wheel",
    description: "Silent running wheel for small rodents.",
    number: 108,
    status: "Available",
    image: "https://i.etsystatic.com/21646732/r/il/a8880d/4999853322/il_fullxfull.4999853322_k4jd.jpg"
  },
  {
    name: "Dog Collar",
    description: "Adjustable collar for small to medium dogs.",
    number: 109,
    status: "Available",
    image: "https://www.mastgeneralstore.com/prodimages/77383-ALPINE_DAWN-L.jpg"
  },
  {
    name: "Bird Feeder",
    description: "Outdoor feeder for small birds.",
    number: 110,
    status: "Available",
    image: "https://m.media-amazon.com/images/I/81wvzUfYJ0L.jpg"
  },
  {
    name: "Aquarium Heater",
    description: "Heater for 20–30 gallon freshwater tanks.",
    number: 111,
    status: "Available",
    image: "https://m.media-amazon.com/images/I/61S0+Iif+uL._AC_UF1000,1000_QL80_.jpg"
  },
  {
    name: "Dog Shampoo",
    description: "Gentle shampoo for dogs of all sizes.",
    number: 112,
    status: "Available",
    image: "https://naturaldog.com/cdn/shop/products/SSOS-01.jpg?v=1680361336&width=1000"
  },
  {
    name: "Catnip Toy",
    description: "Fun catnip toy for indoor cats.",
    number: 113,
    status: "Available",
    image: "https://cdn11.bigcommerce.com/s-asivtkjxr8/images/stencil/1280x1280/products/2068/6718/cpq3o00bg6szepns9e6a__89382.1630111539.jpg?c=1"
  },
  {
    name: "Small Animal Bedding",
    description: "Soft bedding for hamsters, rabbits, and guinea pigs.",
    number: 114,
    status: "Available",
    image: "https://m.media-amazon.com/images/I/81U18FYl5AL._AC_UF1000,1000_QL80_.jpg"
  },
  {
    name: "Dog Treats",
    description: "Healthy treats for dogs.",
    number: 115,
    status: "Available",
    image: "https://marcyspetkitchen.com/cdn/shop/files/Peanut_Butter_Bites_Front_1.png?v=1759867539"
  }
])
