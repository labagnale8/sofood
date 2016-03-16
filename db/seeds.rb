Meal.delete_all
User.delete_all
OrderStatus.delete_all



User.create!(email: 'sophie@hotmail.com', password: 'sophiesophie', admin: true)
User.create!(email: 'louis@hotmail.com', password: 'louislouis')
User.create!(email: 'nicolas@hotmail.com', password: 'niconico')

@user = User.all


poulet = Meal.create!(name:"poulet", price: 10, description:"delicieux", photo:"poulet", available_quantity: 40, publication_date: ('2016-03-16'), user: @user.sample)

steak = Meal.create!(name:"steak", price: 10, description:"nice", photo:"steak", available_quantity: 40, publication_date: ('2016-03-16'), user: @user.sample)

mousse_choco = Meal.create!(name:"Mousse choco", price: 6, description:"choco", photo:"choco", available_quantity: 40,  publication_date: ('2016-03-16'), user: @user.sample)

fraise = Meal.create!(name:"Mousse choco", price: 6, description:"fraise", photo:"fraise", available_quantity: 40,  publication_date: ('2016-03-16'), user: @user.sample)


OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
