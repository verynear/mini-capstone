Image.create!([
  {url: "http://capricorncity.com/wp-content/uploads/2014/10/Simpsons-Therapy.jpg", product_id: 6},
  {url: "http://oneofus.net/wp-content/uploads/2014/08/Disgrace-Like-Home.jpg", product_id: 6},
  {url: "http://i.imgur.com/H8xke.png", product_id: 6},
  {url: "http://img0090.psstatic.com/124731634_amazoncom-kramer-seinfeld-tv-show-portrait-art-framed-.jpg", product_id: 7},
  {url: "https://assets3.thrillist.com/v1/image/764253/size/tl-horizontal_main.jpg", product_id: 7},
  {url: "http://basementrejects.com/wp-content/uploads/2014/04/seinfeld-season-3-21-the-letter-nina-paints-the-kramer-michael-richards-catherine-keener-review-episode-guide-list.jpg", product_id: 7},
  {url: "http://images.complex.com/complex/image/upload/c_limit,f_jpg,fl_progressive,pg_1,w_680/f_auto,q_auto/uy74xi8bqv43aa9tn5so.jpg", product_id: 8},
  {url: "http://static1.comicvine.com/uploads/original/6/61625/1358938-the_tick_4.jpg", product_id: 8},
  {url: "http://www.the-arcade.ie/wp-content/uploads/2014/09/the-tick-is-it-time-for-a-tick-movie.jpeg", product_id: 8}
])
Product.create!([
  {name: "FAMILY THERAPY ANIMATION CELL", description: "This original celluloid with gouache painted artwork is from a scene in the fourth episode of the very first season of The Simpsons. The episode, “There's No Disgrace Like Home,” introduced Dr. Marvin Monroe to the show, and the memorable scene depicted here shows the aftermath of the family’s introduction to shock therapy.", in_stock: true, price: "1599.0", supplier_id: 1},
  {name: "Michael Richards Signed Framed 29x44 The Kramer Seinfeld Poster Display", description: "The famous Kramer painting from Seinfeld", in_stock: true, price: "1408.0", supplier_id: 3},
  {name: "The Tick Hero Cowl Prop", description: "This is the actual cowl worn by Patrick Warburton during The Tick's pilot episode.", in_stock: true, price: "6500.0", supplier_id: 1}
])
Supplier.create!([
  {name: "Independant Studio Services", email: "issprops@aol.com", phone: "818-951-5600"},
  {name: "New Rule Productions", email: "info@newrule.com", phone: "818-387-6450"},
  {name: "Custom Movie Props", email: "pfxpearson@aol.com", phone: "310-466-2910"}
])
