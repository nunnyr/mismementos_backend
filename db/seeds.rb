# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Memory.destroy_all
Note.destroy_all

# user --< memory --< note
User.reset_pk_sequence
Memory.reset_pk_sequence
Note.reset_pk_sequence

#a random note

user_1 = User.create!(username:"Daisy", password_digest:"12345", avatar:"https://images.dog.ceo/breeds/terrier-border/n02093754_6089.jpg", bio: "Just living life in my memory", city:"New York", state:"New York", zipcode:11423)

user_2 = User.create!(username:"Nunny", password_digest:"nico", avatar:"https://images.dog.ceo/breeds/terrier-westhighland/n02098286_437.jpg", bio:"Memories are cool", city:"New York", state:"New York", zipcode:10029)

memory_1 = Memory.create!(title:"Day at Central Park", about:"Picnic with Nunny, had some wine, saw the handsome duck", address: "Central Park", city:"New York", state:"New York", zipcode:10021, user_id: user_1)

note_1 = Note.create!(reflection:"good memory", memory_id: memory_1)







