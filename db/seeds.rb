User.destroy_all
puts "Creating Users..."

u1 = User.create :name => "Gopi", :email => "gopi@ga.com", :password => "chicken", :password_confirmation => "chicken", :is_seller => false
u2 = User.create :name => "Lucy", :email => "lucy@ga.com", :password => "chicken", :password_confirmation => "chicken",  :is_seller => true
u3 = User.create :name => "Paulina", :email => "paulina@ga.com", :password => "chicken", :password_confirmation => "chicken",  :is_seller => true, :admin => true

Plant.destroy_all
puts "Creating Plants..."

p1 = Plant.create :name => "Venus Fly Trap", :images => "v1566047675/photo-1538358519265-586278a34106_fxik9g.jpg", :age => "2 months", :status => "Snappin Health", :cost => 50, :worth => 10000, :description => "he Venus flytrap is a flowering plant best known for its carnivorous eating habits. The “trap” is made of two hinged lobes at the end of each leaf. On the inner surfaces of the lobes are hair-like projections called trichomes that cause the lobes to snap shut when prey comes in contact with them."
p2 = Plant.create :name => "Succulent", :images => "v1566047737/photo-1446071103084-c257b5f70672_auqtzw.jpg", :age => "200 years", :status => "pretty tired and thirsty", :cost => 5, :worth => 35, :description => "In botany, succulent plants, also known as succulents, are plants that have some parts that are more than normally thickened and fleshy, usually to retain water in arid climates or soil conditions. The word 'succulent' comes from the Latin word sucus, meaning juice, or sap."
p3 = Plant.create :name => "Touch Me Not", :images => "v1566047788/61GW63gTadL._SX425__kimw01.jpg", :age => "3 years", :status => "Doesn't want you to touch it", :cost => 700, :worth => 700000, :description => "The stem is erect in young plants, but becomes creeping or trailing with age. It can hang very low and become floppy. The stem is slender, branching, and sparsely to densely prickly, growing to a length of 1.5 m (5 ft)"
p4 = Plant.create :name => "Fidel Tree", :images => "v1566177698/ficus-lyrata-vertakt-871b23_hkfwy4.jpg", :age => "2 years", :status => "great condition", :cost => 400, :worth => 2000, :description => "Say hello to our Fidel Tree, a stunning variety of our dear Fidel. Each tree is truly unique and so can differ from the images above. Nonetheless, he will be equally as beautiful!"
p5 = Plant.create :name => "Mature tubestock", :images => "v1566177922/SNOPOT125_RS_618x458_crop_center.progressive_kevbqw.jpg", :age => "4 years", :status => "perfect condition", :cost => 200, :worth => 100, :description => "This planter was handmade in the village of Pottsville, 20mins from Byron Bay. It is wonderful with a low care trailing pothos of your choice."
p6 = Plant.create :name => "Swinging plant", :images => "v1566178052/bd9e215231b2e824f8194f2706750458_q1oprt.jpg", :age => "7 months", :status => "just perfect", :cost => 100, :worth => 3000, :description => "This plant is just a perfect add to your home. Buy now!"
p7 = Plant.create :name => "Micro Lotus", :images => "v1566178143/effce4dadde8c998e8902d6adb3184d1_gjq1f5.jpg", :age => "4 months", :status => "amazing condition", :cost => 50, :worth => 2000, :description => "Micro Lotus are a new variety of mini lotus from China. Micro lotus are best grown in 15 cm pots with ample light and ventilation. Micro lotus are easily grown on a patio or balcony."
p8 = Plant.create :name => "Maranta", :images => "v1566178181/fba337b023764c321bcfb68c33f2c7f4_vnxomh.jpg", :age => "1 month", :status => "be careful, very fragile!", :cost => 70, :worth => 1000, :description => "Marantas, also called prayer plants, have large, vividly colored leaves with intricate patterns. They spread outward and fill a large planter nicely."
p9 = Plant.create :name => "Rooting plant in the water", :images => "v1566178231/5c738b58f7db30b6cfe4019b38e0bc1a_g4u7dc.jpg", :age => "4 weeks", :status => "a very young plant, be careful how you handle it", :cost => 75, :worth => 500, :description => "A stunning plant. Must have for any plant lover!"
p10 = Plant.create :name => "Sword Fern", :images => "v1566178276/bb751a2ef92fec3ac42481a0d5bb259f_gwmgwx.jpg", :age => "2 years", :status => "A bit old, be careful with it and don't forget to water", :cost => 75, :worth => 500, :description => "A stunning plant which will calm you down."
p11 = Plant.create :name => "Rare Kalen-choe Manginii", :images => "v1566178323/426bfba992a7bc8bf16187470f9a69c3_gef0om.jpg", :age => "2 months", :status => "A perfect condition", :cost => 50, :worth => 300, :description => "A beautiful indoor plant. It is just so pretty!"
p12 = Plant.create :name => "Monstera Obliqua", :images => "v1566178373/b6985fc0437a0999c28c06cf02c44a9b_efhmbx.jpg", :age => "4 weeks", :status => "A very demanding plant. Please water as much as possible", :cost => 30, :worth => 150, :description => "Swiss Cheese vine, often called Monstera obliqua or Monstera adansonii, is a beautiful addition to any home. Here's how to grow and care for them."

Availability.destroy_all
puts "Creating Availabilities..."

a1 = Availability.create :from => "2019-08-20", :to => "2019-09-15"
a2 = Availability.create :from => "2019-08-21", :to => "2019-09-18"
a3 = Availability.create :from => "2019-08-05", :to => "2019-09-01"

Booking.destroy_all
puts "Creating Bookings..."

b1 = Booking.create :from => "2019-08-20", :to => "2019-08-21"
b2 = Booking.create :from => "2019-08-26", :to => "2019-09-01"
b3 = Booking.create :from => "2019-08-06", :to => "2019-08-08"
b4 = Booking.create :from => "2019-08-09", :to => "2019-08-13"

Comment.destroy_all
puts "Creating Comments..."

c1 = Comment.create :comment => "Wow what a cool looking fellow!", :rating => 4, :user_id => u1.id
c2 = Comment.create :comment => "That sure is a lovely plant you have there", :rating => 5, :user_id => u1.id
c3 = Comment.create :comment => "I didn't connect with the plant much", :rating => 2, :user_id => u2.id
c4 = Comment.create :comment => "Would love to rent again!", :rating => 5, :user_id => u3.id


puts "Creating Associations..."

p1.availabilities << a1
p2.availabilities << a2
p3.availabilities << a3

p1.bookings << b1
p2.bookings << b2
p3.bookings << b3 << b4

p1.comments << c4
p2.comments << c3
p3.comments << c1 << c2

u1.bookings << b1
u2.bookings << b2 << b4
u3.bookings << b3

u1.plants << p1
u2.plants << p2 << p4 << p5 << p6 << p7 << p8 << p9
u3.plants << p3 << p10 << p12
