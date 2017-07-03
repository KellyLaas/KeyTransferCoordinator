# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(name: 'ArturTheHawk', uid: '407408718192', email: 'Artur@gmail.com', community: 'ChiEnl', voucher: 'DisasterPyrite', vouched: '1')
User.create(name: 'DisasterAimiya', uid: '104832098345', email: 'Aimiya@gmail.com', community: 'ChiEnl', voucher: 'DisasterPyrite', vouched: '1')
User.create(name: 'FireEmblemRoy', uid: '313272130648', email: 'FireEmblom@gmail.com', community: 'ChiEnl', voucher: 'DisasterScotch', vouched: '1')
User.create(name: 'Featherdog', uid: '914358073651', email: 'Featherdog@gmail.com', community: 'ChiEnl', voucher: 'FireEmblemRoy', vouched: '1')
User.create(name: 'DisasterTrident', uid: '173751305357', email: 'Trident@gmail.com', community: 'ChiEnl', voucher: 'DisasterPyrite', vouched: '1')
User.create(name: 'DisasterCthulhu', uid: '580507388627', email: 'Cthulhu@gmail.com', community: 'ChiEnl', voucher: 'DisasterPyrite', vouched: '1',)
User.create(name: 'Wal10c', uid: '464306024383', email: 'Wal10c@gmail.com', community: 'ChiEnl', voucher: 'ArturTheHawk', vouched: '1')
User.create(name: 'Aonthe', uid: '323765792931', email: 'Aonthe@gmail.com', community: 'ChiEnl', voucher: 'ArturTheHawk', vouched: '1')
User.create(name: 'DisasterScotch', uid: '401303052317', email: 'Scotch@gmail.com', community: 'ChiEnl', voucher: 'DisasterCthulhu', vouched: '1')
User.create(name: 'StiffH20', uid: '374531498284', email: 'StiffH20@gmail.com', community: 'ChiEnl', voucher: 'ArturTheHawk', vouched: '1')
User.create(name: 'HawksParent', uid: '384531919847', email: 'Parent@gmail.com', community: 'ChiEnl', voucher: 'ArturTheHawk', vouched: '1')
User.create(name: 'Dayosteph', uid: '324531597804', email: 'Dayosteph@gmail.com', community: 'ChiEnl', voucher: 'DisasterScotch', vouched: '1')
User.create(name: 'DisasterPyrite', uid: '162570165926', email: 'Pyrite@gmail.com', community: 'ChiEnl', voucher: 'ArturTheHawk', vouched: '1')

Leg.create(origin: 'Chicago', destination: 'Charlotte', user_id: '1', trip_id: '1',)
Leg.create(origin: 'Los Angeles', destination: 'Mexico City', user_id: '2', trip_id: '4',)
Leg.create(origin: 'Chicago', destination: 'Ann Arbor', user_id: '3', trip_id: '',)
Leg.create(origin: 'Denver', destination: 'Monterrey', user_id: '4',trip_id: '2')
Leg.create(origin: 'Ann Arbor', destination: 'Kansas City', user_id: '5',trip_id: '')
Leg.create(origin: 'Chicago', destination: 'Monterrey', user_id: '6',trip_id: '')
Leg.create(origin: 'Mexico City', destination: 'Tegucigalpa', user_id: '7',trip_id: '3')
Leg.create(origin: 'New York', destination: 'Chicago', user_id: '8',trip_id: '')
Leg.create(origin: 'Chicago', destination: 'Dallas', user_id: '10',trip_id: '')
Leg.create(origin: 'Ann Arbor', destination: 'Chicago', user_id: '11',trip_id: '')
Leg.create(origin: 'Chicago', destination: 'Denver', user_id: '12',trip_id: '')
Leg.create(origin: 'Kansas City', destination: 'Los Angeles', user_id: '13',trip_id: '')
Leg.create(origin: 'Boston', destination: 'Chicago', user_id: '14', trip_id: '')

Trip.create(title: 'test 1')
Trip.create(title: 'test 2')
Trip.create(title: 'test 3')
Trip.create(title: 'test 4')
