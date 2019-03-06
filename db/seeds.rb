# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
MuffinType.destroy_all
Order.destroy_all
Day.destroy_all


john = User.create(first_name: 'John', last_name: 'Smith', email: 'johnsmith@gmail.com', phone_number: 5555555555, username: "john", password_digest: "1234")
jane = User.create(first_name: 'Jane', last_name: 'Smith', email: 'janesmith@gmail.com', phone_number: 6466466464, username: "jane", password_digest: "password")

MuffinType.create(calories: 200, flavor: 'Chocolate')
MuffinType.create(calories: 150, flavor: 'Strawberry')
MuffinType.create(calories: 150, flavor: 'Vanilla')
MuffinType.create(calories: 150, flavor: 'Banana')
MuffinType.create(calories: 150, flavor: 'Red Velvet')



Order.create(user: john, muffin_type: MuffinType.first, review: 'Super', stars: 5, muffin_url: 'https://thebusybaker.ca/wp-content/uploads/2018/08/best-ever-greek-yogurt-chocolate-chip-muffins-title.jpg ', title: 'YUMMMERS')
Order.create(user: jane, muffin_type: MuffinType.second , review: 'Gross', stars: 2, muffin_url: 'https://www.justsotasty.com/wp-content/uploads/2018/04/Strawberry-Muffins-9.jpg', title: 'NEVER ORDERING AGAIN!')
Order.create(user: john, muffin_type: MuffinType.last, review: 'Delicious', stars: 5, muffin_url: 'https://www.browneyedbaker.com/wp-content/uploads/2010/11/red-velvet-cupcakes-49-600.jpg', title: 'Loved It!')


Day.create(name: 'Monday')
Day.create(name: 'Tuesday')
Day.create(name: 'Wednesday')
Day.create(name: 'Thursday')
Day.create(name: 'Friday')
