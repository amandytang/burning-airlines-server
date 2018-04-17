# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'admin'

Plane.destroy_all
p1 = Plane.create :column => '3', :row => '15'

Flight.destroy_all
f1 = Flight.create :origin => 'Tucson', :destination => 'Sydney', :date => '28/01/2018'
f2 = Flight.create :origin => 'Sydney', :destination => 'Tucson', :date => '13/02/2018'

u1.flights << f1
