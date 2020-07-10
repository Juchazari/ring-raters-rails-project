Restaurant.destroy_all
OnionRing.destroy_all
Review.destroy_all
User.destroy_all

@res1 = Restaurant.create(name: "Nandita & her Onions", address: "1010 West Houston", phone_number: "786-001-5555", img_path: "/assets/res_01.png")
@res2 = Restaurant.create(name: "Jodi's World of Onions", address: "2020 West Houston", phone_number: "786-002-5555", img_path: "/assets/res_02.png")
@res3 = Restaurant.create(name: "Toby's Onion Club", address: "3030 West Houston", phone_number: "786-003-5555", img_path: "/assets/res_03.png")

@res4 = Restaurant.create(name: "Julio's City Onion", address: "4040 West Houston", phone_number: "786-004-5555", img_path: "/assets/res_04.png")
@res5 = Restaurant.create(name: "James Italian Onion Restaurant", address: "5050 West Houston", phone_number: "786-005-5555", img_path: "/assets/res_05.png")
@res6 = Restaurant.create(name: "Frank's Onion Delight", address: "6060 West Houston", phone_number: "786-006-5555", img_path: "/assets/res_06.png")

@res7 = Restaurant.create(name: "Spencer's Holly Onions", address: "7070 West Houston", phone_number: "786-007-5555", img_path: "/assets/res_07.png")
@res8 = Restaurant.create(name: "Abel's Onions & Kolaches", address: "8080 West Houston", phone_number: "786-008-5555", img_path: "/assets/res_08.png")
@res9 = Restaurant.create(name: "Antonio's Onion Kithcen", address: "9090 West Houston", phone_number: "786-009-5555", img_path: "/assets/res_09.png")
@res10 = Restaurant.create(name: "Steven's Onion Hotel & Bar", address: "1111 West Houston", phone_number: "786-010-5555", img_path: "/assets/res_10.png")

@onion1 = OnionRing.create(name: "Skinny Onions", nutritional_facts: "Very skinny. 100 Calories", img_path: "/assets/onion_01.jpg")
@onion2 = OnionRing.create(name: "Red Spicy Onion", nutritional_facts: "Very spicy. 200 Calories", img_path: "/assets/onion_02.jpg")
@onion3 = OnionRing.create(name: "Orange Onions", nutritional_facts: "Very orange. 300 Calories", img_path: "/assets/onion_03.jpg")
@onion4 = OnionRing.create(name: "Orange and Red Onions", nutritional_facts: "Very orange, but also red. 400 Calories", img_path: "/assets/onion_04.jpg")
@onion5 = OnionRing.create(name: "Yellow Onions", nutritional_facts: "Very yellow. 500 Calories", img_path: "/assets/onion_05.jpg")
@onion6 = OnionRing.create(name: "Pink Onions", nutritional_facts: "Very pink. 600 Calories", img_path: "/assets/onion_06.jpg")
@onion7 = OnionRing.create(name: "Crunchy Bluw Onions", nutritional_facts: "Very crunchy, not so blue. 100 Calories", img_path: "/assets/onion_07.jpeg")
@onion8 = OnionRing.create(name: "Burger Onions", nutritional_facts: "Very delicious. 100 Calories", img_path: "/assets/onion_08.jpg")
@onion9 = OnionRing.create(name: "Flower Onions", nutritional_facts: "Looks like a flower. 100 Calories", img_path: "/assets/onion_09.jpeg")
@onion10 = OnionRing.create(name: "Mustard Onions", nutritional_facts: "50% mustard, %50 onion. 100 Calories", img_path: "/assets/onion_10.jpg")
@onion11 = OnionRing.create(name: "Pixel Onions", nutritional_facts: "Only eatable if you are a video game character. 100 Calories", img_path: "/assets/onion_11.jpg")
@onion12 = OnionRing.create(name: "Almond Onions", nutritional_facts: "Very healthy. 100 Calories", img_path: "/assets/onion_12.jpg")
@onion13 = OnionRing.create(name: "Tomato Onions", nutritional_facts: "Roman tomatoes with onions. 100 Calories", img_path: "/assets/onion_13.jpg")
@onion14 = OnionRing.create(name: "Fish Onions", nutritional_facts: "Fish with onions. 100 Calories", img_path: "/assets/onion_14.jpg")
@onion15 = OnionRing.create(name: "Shrimp and Lemon Onions", nutritional_facts: "Very shrimpy, not so lemony. 100 Calories", img_path: "/assets/onion_15.jpg")
@onion16 = OnionRing.create(name: "Soft Onions", nutritional_facts: "Very soft. 100 Calories", img_path: "/assets/onion_16.jpg")
@onion17 = OnionRing.create(name: "Egg Salad Onions", nutritional_facts: "Very eggy. 100 Calories", img_path: "/assets/onion_17.jpg")
@onion18 = OnionRing.create(name: "Original Shrimp Onions", nutritional_facts: "Very original. 100 Calories", img_path: "/assets/onion_18.jpg")
@onion19 = OnionRing.create(name: "Secret Sauce Onions", nutritional_facts: "Very secret. 100 Calories", img_path: "/assets/onion_19.jpg")
@onion20 = OnionRing.create(name: "Beer Oions", nutritional_facts: "Cooked on beer. 100 Calories", img_path: "/assets/onion_20.jpg")
@onion21 = OnionRing.create(name: "Garlic Onions", nutritional_facts: "A lot of garlic. 100 Calories", img_path: "/assets/onion_21.jpg")
@onion22 = OnionRing.create(name: "Salty Onions", nutritional_facts: "Very salty. 100 Calories", img_path: "/assets/onion_22.jpg")

@onion_res01 = OnionRestaurant.create(restaurant_id: @res1.id, onion_ring_id: @onion1.id)
@onion_res02 = OnionRestaurant.create(restaurant_id: @res1.id, onion_ring_id: @onion2.id)
@onion_res03 = OnionRestaurant.create(restaurant_id: @res1.id, onion_ring_id: @onion3.id)

@onion_res04 = OnionRestaurant.create(restaurant_id: @res2.id, onion_ring_id: @onion4.id)
@onion_res05 = OnionRestaurant.create(restaurant_id: @res2.id, onion_ring_id: @onion5.id)
@onion_res06 = OnionRestaurant.create(restaurant_id: @res2.id, onion_ring_id: @onion6.id)

@onion_res07 = OnionRestaurant.create(restaurant_id: @res3.id, onion_ring_id: @onion7.id)
@onion_res08 = OnionRestaurant.create(restaurant_id: @res3.id, onion_ring_id: @onion8.id)
@onion_res09 = OnionRestaurant.create(restaurant_id: @res3.id, onion_ring_id: @onion9.id)

@onion_res10 = OnionRestaurant.create(restaurant_id: @res4.id, onion_ring_id: @onion10.id)
@onion_res11 = OnionRestaurant.create(restaurant_id: @res4.id, onion_ring_id: @onion11.id)
@onion_res12 = OnionRestaurant.create(restaurant_id: @res4.id, onion_ring_id: @onion12.id)

@onion_res13 = OnionRestaurant.create(restaurant_id: @res5.id, onion_ring_id: @onion13.id)
@onion_res14 = OnionRestaurant.create(restaurant_id: @res5.id, onion_ring_id: @onion14.id)
@onion_res15 = OnionRestaurant.create(restaurant_id: @res5.id, onion_ring_id: @onion15.id)

@onion_res16 = OnionRestaurant.create(restaurant_id: @res6.id, onion_ring_id: @onion16.id)
@onion_res17 = OnionRestaurant.create(restaurant_id: @res6.id, onion_ring_id: @onion17.id)
@onion_res18 = OnionRestaurant.create(restaurant_id: @res6.id, onion_ring_id: @onion18.id)

@onion_res19 = OnionRestaurant.create(restaurant_id: @res7.id, onion_ring_id: @onion19.id)
@onion_res20 = OnionRestaurant.create(restaurant_id: @res7.id, onion_ring_id: @onion20.id)
@onion_res21 = OnionRestaurant.create(restaurant_id: @res7.id, onion_ring_id: @onion21.id)

@onion_res22 = OnionRestaurant.create(restaurant_id: @res8.id, onion_ring_id: @onion22.id)
@onion_res23 = OnionRestaurant.create(restaurant_id: @res8.id, onion_ring_id: @onion1.id)
@onion_res24 = OnionRestaurant.create(restaurant_id: @res8.id, onion_ring_id: @onion2.id)

@onion_res25 = OnionRestaurant.create(restaurant_id: @res9.id, onion_ring_id: @onion3.id)
@onion_res26 = OnionRestaurant.create(restaurant_id: @res9.id, onion_ring_id: @onion4.id)
@onion_res27 = OnionRestaurant.create(restaurant_id: @res9.id, onion_ring_id: @onion5.id)

@onion_res28 = OnionRestaurant.create(restaurant_id: @res10.id, onion_ring_id: @onion6.id)
@onion_res29 = OnionRestaurant.create(restaurant_id: @res10.id, onion_ring_id: @onion7.id)
@onion_res30 = OnionRestaurant.create(restaurant_id: @res10.id, onion_ring_id: @onion8.id)


@review_07 = Review.create(description:"Spencer's Holly Onions has a brilliant atmosphere for a good time out with friends. The color pallet is rustic greens, and browns, and the seating near the windows was extremely comfortable. Unfortunately, their secret sauce onion rings didnt quite live up to the hype. The rings were too oily, and the fabled sauce had an odd pungent smell. I'll give it three stars for a great interior, and some mediocre onion rings" , rating: 3 , onion_ring_id: @onion19.id, user_id: @user_09.id)
@review_08 = Review.create(description: "the wrong type of rings. This was a huge disappointment. They were wayyyyy too salty, and when I asked the server for a new batch they spit in my eye. Dont know what a Kolach is but im never coming here again", rating: 1, onion_ring_id: @onion22.id, user_id: @user_11.id)
@review_09 = Review.create(description: "Orange Onions! A novel concept! The sweetness of the oranges in the sauce, and the zest in the batter paired well with the spices, and the flavour of the onion, Antonio's Onion Kitchen hit this recipe out of the park!" , rating: 4, onion_ring_id: @onion3.id, user_id: @user_10.id)
@review_10 = Review.create(description: "The Crunchy Bluw Onions certainly live up its name. The rings were extremely crunchy, and cooked to perfection. The blue cheese sauce that was paired with it elevated this dish. The Hotel/Bar was also an interesting find, and one that I'll be visiting later for sure!", rating: 5 , onion_ring_id: @onion7.id, user_id: @user_09.id)


@user_09 = User.create(first_name: "Zelda", last_name: "Notsheik", email: "triforceWiz@hymail.com", password: "ledgendary")

@user_10 = User.create(first_name: "Mario", last_name:"Itsame" , email: "MarioPHD@mushmail.com", password: "peach22")

@user_11 = User.create(first_name: "Sanic", last_name: "TheHogBush", email: "gottagofast@speedmail.com", password: "R1nG5")
