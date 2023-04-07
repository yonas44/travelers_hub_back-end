# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(username: 'Tester', password: 'password' )
user2 = User.create(username: 'Another-Tester', password: 'password')

package1 = Package.create(user: user1, title: 'Wanka Resort', destination: 'Madagascar', description: "Random place with nice views", photo: ['https://images.unsplash.com/photo-1489493887464-892be6d1daae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJlYXV0aWZ1bCUyMHBsYWNlJTIwdG8lMjB2aXNpdCUyMGluJTIwYWZyaWNhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1654713755995-53460fa9b17e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1644488984976-ec93c72bd97f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'], flight: true, price: 3400, bus: false, accomodation: true, promotion: 0)
package2 = Package.create(user: user2, title: 'Figi Island', destination: 'Tokyo, Japan', description: "Random place with nice views", photo: ['https://images.unsplash.com/photo-1489493887464-892be6d1daae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJlYXV0aWZ1bCUyMHBsYWNlJTIwdG8lMjB2aXNpdCUyMGluJTIwYWZyaWNhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1654713755995-53460fa9b17e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1644488984976-ec93c72bd97f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'], flight: true, price: 3400, bus: false, accomodation: true, promotion: 0)


first_package = Package.create(user: uche, title: "Airlines", description: "my first package" , destination: "Paris", photo: ["https://thumbs.dreamstime.com/b/paris-eiffel-tower-river-seine-sunset-france-one-most-iconic-landmarks-107376702.jpg"], flight: true, price: 200.4, bus: false, accomodation: "Hotel de la paix", promotion: 30)
package1 = Package.create(user: user2, title: 'Wanka Resort', destination: 'Madagascar', description: "Random place with nice views", photo: ['https://images.unsplash.com/photo-1489493887464-892be6d1daae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJlYXV0aWZ1bCUyMHBsYWNlJTIwdG8lMjB2aXNpdCUyMGluJTIwYWZyaWNhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1654713755995-53460fa9b17e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1644488984976-ec93c72bd97f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'], flight: true, price: 3400, bus: false, accomodation: "Hotel de la paix", promotion: 0)
package2 = Package.create(user: user2, title: 'apapa Resort', destination: 'Paris', description: "Random place with nice views", photo: ['https://thumbs.dreamstime.com/b/paris-eiffel-tower-river-seine-sunset-france-one-most-iconic-landmarks-107376702.jpg', 'https://images.unsplash.com/photo-1654713755995-53460fa9b17e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVscyUyMGFuZCUyMHJlc29ydHMlMjBpbiUyMGFmcmljYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', 'https://media.gettyimages.com/id/924894324/photo/eiffel-tower-in-paris-france.jpg?s=612x612&w=gi&k=20&c=FIgh5RTHJVs-7fv-J6rZMR7vrEar_Jyxi1V17ClXpkM='], flight: false, price: 3400, bus: true, accomodation: "Hotel de la paix", promotion: 0)