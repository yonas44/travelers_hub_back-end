# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(name: 'Tester')
user2 = User.create(name: 'Another-Tester')

package1 = Package.create(user: user1, title: 'Wanka Resort', description: "Random place with nice views", photo: ['https://images.unsplash.com/photo-1489493887464-892be6d1daae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJlYXV0aWZ1bCUyMHBsYWNlJTIwdG8lMjB2aXNpdCUyMGluJTIwYWZyaWNhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1654713755995-53460fa9b17e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1644488984976-ec93c72bd97f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'], flight: true, price: 3400, bus: false, accomodation: true, promotion: 0)
package2 = Package.create(user: user1, title: 'Figi Island', description: "Random place with nice views", photo: ['https://images.unsplash.com/photo-1489493887464-892be6d1daae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJlYXV0aWZ1bCUyMHBsYWNlJTIwdG8lMjB2aXNpdCUyMGluJTIwYWZyaWNhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1654713755995-53460fa9b17e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1644488984976-ec93c72bd97f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'], flight: true, price: 3400, bus: false, accomodation: true, promotion: 0)

