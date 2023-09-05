# Faker
30.times do
  title = Faker::Device.model_name
  body = Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4)
  price = Faker::Commerce.price
  img = Faker::LoremFlickr.image(size: "50x60") #=> "https://loremflickr.com/50/60" #=> "https://loremflickr.com/50/60/sports"
  Iphone.create title: title, body: body, price: price, img: img 
end
