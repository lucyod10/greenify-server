User.destroy_all
puts "Creating Users..."

u1 = User.create :name => "Gopi", :email => "gopi@ga.com", :password => "chicken", :password_confirmation => "chicken", :is_seller => false
u2 = User.create :name => "Lucy", :email => "lucy@ga.com", :password => "chicken", :password_confirmation => "chicken",  :is_seller => true
u3 = User.create :name => "Paulina", :email => "paulina@ga.com", :password => "chicken", :password_confirmation => "chicken",  :is_seller => false, :admin => true

Plant.destroy_all
puts "Creating Plants..."

p1 = Plant.create :name => "Venus Fly Trap", :images => "v1566047675/photo-1538358519265-586278a34106_fxik9g.jpg", :age => "2 months", :status => "Snappin Health", :cost => 50, :worth => 10000, :description => "he Venus flytrap is a flowering plant best known for its carnivorous eating habits. The “trap” is made of two hinged lobes at the end of each leaf. On the inner surfaces of the lobes are hair-like projections called trichomes that cause the lobes to snap shut when prey comes in contact with them."
p2 = Plant.create :name => "Succulent", :images => "v1566047737/photo-1446071103084-c257b5f70672_auqtzw.jpg", :age => "200 years", :status => "pretty tired and thirsty", :cost => 5, :worth => 35, :description => "In botany, succulent plants, also known as succulents, are plants that have some parts that are more than normally thickened and fleshy, usually to retain water in arid climates or soil conditions. The word 'succulent' comes from the Latin word sucus, meaning juice, or sap."
p3 = Plant.create :name => "Touch Me Not", :images => "v1566047788/61GW63gTadL._SX425__kimw01.jpg", :age => "3 years", :status => "Doesn't want you to touch it", :cost => 700, :worth => 700000, :description => "The stem is erect in young plants, but becomes creeping or trailing with age. It can hang very low and become floppy. The stem is slender, branching, and sparsely to densely prickly, growing to a length of 1.5 m (5 ft)"

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

puts "Creating Associations..."

p1.availabilities << a1
p2.availabilities << a2
p3.availabilities << a3

p1.bookings << b1
p2.bookings << b2
p3.bookings << b3 << b4

u1.bookings << b1
u2.bookings << b2 << b4
u3.bookings << b3
