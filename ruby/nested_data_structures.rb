# 5.5- Release 2
# Design and build a nested data structure to represent a real-world construct.
#-----------------------------------------
# Construct: Electronics Store :)!

electronics_store = {
  aisle_one: {
    product: 'Cell Phones',
      carriers: [
        'Verizon',
        'Sprint',
        'At&T'
      ],
      phone_models: {
      apple: 'iPhone_6',
      samsung: 'Galaxy_s6',
      google: 'Nexus_6p'
      }
  },
  aisle_two: {
    product: 'Video Games',
      systems: [
        'Xbox_One',
        'PS4',
        'PC'
      ],
      games: {
        action: 'Grand Theft Auto',
        rpg: 'Dark Souls',
        shooter:'Destiny'
      }

  },
  aisle_three: {
    product: 'PC',
      company: [
        'Alienware',
        'ASUS',
        'CyberpowerPC'
      ],
      graphics_cards: {
        msi: 'GeForce GTX 970',
        nvidia: 'GeForce GT 730',
        amd:'Radeon R7 360'
      }
  }
}
#-----------------------------------------
# Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple indexes or hash keys (or both) to access nested items.

# Access- Verizon
p electronics_store[:aisle_one][:carriers][0]
# Access- All games
p electronics_store[:aisle_two][:games]
# Access- GeForce GTX 970
p electronics_store[:aisle_three][:graphics_cards][:msi]
