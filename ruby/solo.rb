#release 0: design a class
#requirements ->
  #at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
  #at least three methods, at least one of which takes an argument
#=======================RELEASE 0===============================
#create wizard class
#method 1: initialize(name)
#method 2: cast spell(number of casts, spell type)
#method 3: summon dragon(dragon color, dragon type)
#method 4: teleport

#attribute 1: name
#attribute 2: spell type
#attribute 3: number of casts
#attribute 4: dragon color
#attribute 5: dragon type

#example output
#initialize output: "(Kael'thas)"
#cast spell output: "Kael'thas casted (3) (fire) spells!"
#summon dragon output: "(Kael'thas) summoned a (crimson) (hydra)!"
#teleport: Wait..where did (Kael'thas) go?...
#=======================RELEASE 1===============================
#release 1: write your class
#requirements ->
  #Use attr_reader and attr_accessor
  #Use an initialize method that sets at least one attribute

class Wizard
  def initialize(name)
    puts "initializing new wizard..."
    @name = name
    @spell_type = spell_type
    @number_of_casts = number_of_casts
    @dragon_color = ["azure", "bronze", "crimson", "emerald", "silver"]
    @dragon_type = ["hydra", "drake", "wyvern", "serpent"]
  end
