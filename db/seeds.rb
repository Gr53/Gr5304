# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PersonType.create({
	person_type: "admin"
	
})

10.times {
	Person.create(
	{
	name1:Faker::Name.first_name, 
	last_name1:Faker::Name.last_name,
	last_name2:Faker::Name.last_name,
	person_type:1
	})

}


