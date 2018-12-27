# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
coyote = Animal.create(name: "Coyote", kingdom: "Animalia", phylum: "Chordata", cls: "Mammalia", order: "Carnivora", family: "Canidae", genus: "Canis", species: "C. latrans", native: true, endangered: false)
red_tailed_hawk = Animal.create(name: "Red Tailed Hawk", kingdom: "Animalia", phylum: "Chordata", cls: "Aves", order: "	Accipitriformes", family: "Accipitridae", genus: "Buteo", species: "B. jamaicensis", native: true, endangered: false)
striped_skunk = Animal.create(name: "Stripped Skunk", kingdom: "Animalia", phylum: "Chordata", cls: "Mammalia", order: "Carnivora", family: "Mephitidae", genus: "Mephitis", species: "M. mephitis", native: true, endangered: false)
opossum = Animal.create(name: "Opossum", kingdom: "Animalia", phylum: "Chordata", cls: "Mammalia", order: "Didelphimorphia", family: "Didelphidae", genus: "Didelphis", species: "D. Virginiana", native: true, endangered: false)
red_tailed_fox = Animal.create(name: "Red Tailed Fox", kingdom: "Animalia", phylum: "Chordata", cls: "Mammalia", order: "Carnivora", family: "Canidae", genus: "Vulpes", species: "V. Vulpes", native: true, endangered: false)
