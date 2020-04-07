# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.destroy_all
Product.destroy_all
Order.destroy_all


c1 = Customer.create(name: "Uzo")
c2 = Customer.create(name: "Junior")
c3 = Customer.create(name: "Beza")
c4 = Customer.create(name: "Bret")
c5 = Customer.create(name: "Chine")
c6 = Customer.create(name: "Ann")
c7 = Customer.create(name: "Carla")
c8 = Customer.create(name: "Lindsay")
c9 = Customer.create(name: "Paul")
c10 = Customer.create(name: "Marc")


p1 = Product.create(name: "Toilet Paper", price: 80)
p2 = Product.create(name: "Gameboy", price: 200)
p3 = Product.create(name: "Floss", price: 15)
p4 = Product.create(name: "Stuffed Animal", price: 30)
p5 = Product.create(name: "Pokemon Cards", price: 10)
p6 = Product.create(name: "Nintendo Switch", price: 250)
p7 = Product.create(name: "Gold", price: 1500)
p8 = Product.create(name: "Hangers", price: 25)
p9 = Product.create(name: "Markers", price: 15)
p10 = Product.create(name: "Cereal", price: 20)


d1 = DateTime.new(2001,2,3,4,5,6,'-05:00')
d2 = DateTime.new(2020,2,21,4,5,6,'-05:00')
d3 = DateTime.new(2020,4,15,4,5,6,'-05:00')
d4 = DateTime.new(2020,2,3,4,5,6,'-05:00')
d5 = DateTime.new(2018,3,17,4,5,6,'-05:00')
d6 = DateTime.new(2019,12,27,4,5,6,'-05:00')
d7 = DateTime.new(2020,2,3,4,5,6,'-05:00')
d8 = DateTime.new(2007,2,3,4,5,6,'-05:00')
d9 = DateTime.new(2006,2,3,4,5,6,'-05:00')
d10 = DateTime.new(2020,2,3,4,15,6,'-05:00')
d11 = DateTime.new(2014,2,3,4,5,6,'-05:00')
d12 = DateTime.new(2013,2,3,4,5,6,'-05:00')
d13 = DateTime.new(2010,12,4,5,1,6,'-05:00')
d14 = DateTime.new(2014,2,3,4,5,6,'-05:00')
d15 = DateTime.new(2013,2,12,4,7,6,'-05:00')
d16 = DateTime.new(2020,4,3,4,2,6,'-05:00')
d17 = DateTime.new(2020,2,3,4,2,6,'-05:00')
d18 = DateTime.new(2020,8,12,5,5,6,'-05:00')
d19 = DateTime.new(2020,5,23,9,5,6,'-05:00')
d20 = DateTime.new(2020,7,20,7,4,8,'-05:00')

#                           #=> #<DateTime: 2007-11-19T08:37:48-0600 ...>
# d.strftime("Printed on %m/%d/%Y")   #=> "Printed on 11/19/2007"
# d.strftime("at %I:%M%p")            #=> "at 08:37AM"

o1 = Order.create(date: d1, product_id: p1.id, customer_id: c1.id, quantity: 1)
o2 = Order.create(date: d2, product_id: p4.id, customer_id: c2.id, quantity: 1)
o3 = Order.create(date: d3, product_id: p6.id , customer_id: c2.id, quantity: 1)
o4 = Order.create(date: d4, product_id: p8.id , customer_id: c2.id, quantity: 3)
o5 = Order.create(date: d5, product_id: p2.id , customer_id: c1.id, quantity: 4)
o6 = Order.create(date: d6, product_id: p3.id , customer_id: c3.id, quantity: 2)
o7 = Order.create(date: d7, product_id: p8.id , customer_id: c3.id, quantity: 1)
o8 = Order.create(date: d8, product_id: p10.id, customer_id: c4.id, quantity: 1)
o9 = Order.create(date: d9, product_id: p8.id, customer_id: c2.id, quantity: 1)
o10 = Order.create(date: d10, product_id:p4.id , customer_id: c5.id, quantity: 5)
o11 = Order.create(date: d11, product_id: p5.id, customer_id: c1.id, quantity: 3)
o12 = Order.create(date: d12, product_id: p6.id, customer_id: c2.id, quantity: 3)
o13 = Order.create(date: d13, product_id: p6.id, customer_id: c4.id, quantity: 9999999999)
o14 = Order.create(date: d14, product_id: p6.id, customer_id: c8.id, quantity: 2)
o15 = Order.create(date: d15, product_id: p1.id, customer_id: c9.id, quantity: 2)
o16 = Order.create(date: d16, product_id: p4.id, customer_id: c10.id, quantity: 1)
o17 = Order.create(date: d17, product_id: p2.id, customer_id: c2.id, quantity: 2)
o18 = Order.create(date: d18, product_id: p2.id, customer_id: c10.id, quantity: 2)
o19 = Order.create(date: d19, product_id: p3.id, customer_id: c3.id, quantity: 2)
o20 = Order.create(date: d20, product_id: p9.id, customer_id: c7.id, quantity: 2)


