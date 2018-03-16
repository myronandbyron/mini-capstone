# Product.create({name: "asdkjf;jk", price: 2, ...}) #.create does the creating and the saving so you can get lost on what went wrong, also a break doesn't provide and error; it fails silently

product1 = Product.new({name: "Thingamabob", price: 1, image_url: "https://images-na.ssl-images-amazon.com/images/I/A1d5U2BMH1L.jpg", description: "I don't even know"})

product1.save

product2 = Product.new({name: "Doohickey", price: 2, image_url: "https://i.ytimg.com/vi/KIvDoReLbBo/hqdefault.jpg", description: "second product"})

product2.save