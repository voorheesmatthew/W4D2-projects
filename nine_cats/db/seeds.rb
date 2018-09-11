# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
CatRentalRequest.destroy_all


Cat.create(birth_date: 20141201, color: 'Orange', name: 'Moggie', sex: 'M', description: 'Moggie was a cool cat.')
Cat.create(birth_date: 20151201, color: 'Orange', name: 'Noggie', sex: 'M', description: 'Noggie was a net cat.')
Cat.create(birth_date: 20161201, color: 'Orange', name: 'Soggie', sex: 'F', description: 'Soggie was a wet cat.')
Cat.create(birth_date: 20171101, color: 'Orange', name: 'Goggie', sex: 'M', description: 'Goggie was a get cat.')

CatRentalRequest.create(cat_id: Cat.find_by(name: 'Moggie').id, start_date: 20151201, end_date: 20160601)
CatRentalRequest.create(cat_id: Cat.find_by(name: 'Moggie').id, start_date: 20161201, end_date: 20170601)
CatRentalRequest.create(cat_id: Cat.find_by(name: 'Soggie').id, start_date: 20151201, end_date: 20160601)
CatRentalRequest.create(cat_id: Cat.find_by(name: 'Goggie').id, start_date: 20151201, end_date: 20160601)