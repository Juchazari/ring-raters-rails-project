User.destroy_all
OnionRing.destroy_all
Review.destroy_all
Restaurant.destroy_all
OnionRestaurant.destroy_all

10.times do 
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: "password123"
    )
end

10.times do
    OnionRing.create(
        name: (Faker::Color.color_name.capitalize + " " + "Onion Ring"),
        nutritional_facts: Faker::Food.spice
    )
end

10.times do
    Review.create(
        user_id:  User.all.sample.id,
        onion_ring_id: OnionRing.all.sample.id,
        description: Faker::Restaurant.review,
        rating: rand(1..5)
    )
end

10.times do 
    Restaurant.create(
        name: Faker::Company.name,
        address: Faker::Address.street_address
    )
end

10.times do
    OnionRestaurant.create(
        restaurant_id: Restaurant.all.sample.id,
        onion_ring_id: OnionRing.all.sample.id
    )
end
