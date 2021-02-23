# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(user_name: 'Janice87', email: 'janice@email.com', password: 'password', image_url: 'https://images.generated.photos/GdpY0XUpeBFAZJbN8PGds-gC1nbFUvn-u_rSaNrw6uk/rs:fit:256:256/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA1OTY0NDguanBn.jpg', bio: 'I\'m in Kissimmee, FL. My uncle died from Covid and it seems like it\'s everywhere here.') 
# User.create(user_name: 'EmilioSanDiego', email: 'emilio@email.com', password_digest: BCrypt::Password.create('Your_Password'), image_url: 'https://images.generated.photos/TLB4-9bZsrs7-EtltfHjO7h-C3PfX23EauVAgylXIr8/rs:fit:256:256/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzAwMzczMDEuanBn.jpg', bio: 'I never worried about germs before but I had to quit my job because everyone was getting sick. I need to get back to work but I don\'t want to put my family in danger.')

# User.create(user_name: 'RexistheBest', email: 'rexyandiknowit@email.com', password_digest: 'password', image_url: 'https://images.generated.photos/-FYrEwTOI6RhcGNRe3nxfYjHTFtjgshTAyFPUuys59c/rs:fit:256:256/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA0NDk3NTEuanBn.jpg', bio: 'I want to hit the bars and I can\'t take any more of this lockdown.')

# Post.create(user_id: 1, title: 'RIP Uncle Frank', body: 'My uncle Frank passed away from Corona in December :(', image_url: 'https://images.generated.photos/JdjUE99AnGGZIQM91kOCuNyimNsHY7Z0LnUCQ9YyKv4/rs:fit:256:256/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA3MzAwMTQuanBn.jpg', claps: 0)
# Post.create(user_id: 3, title: 'When Can I Get Outta My House?', body: '', image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2bnsWfV4M9dJwRsY6gaPZS9874nl0c6GKHQ&usqp=CAU', claps: 0)

# Post.create(user_id: 1, title: 'Why are all these people outside?', body: 'I can\'t believe how many people get together like nothing is different.', image_url: 'https://images.unsplash.com/photo-1586105449897-20b5efeb3233?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjl8fHBhcnR5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', claps: 0)

# Tag.create(name: 'pandemic')
# Tag.create(name: 'isolation')
# Tag.create(name: 'advice')
# Tag.create(name: 'vaccine')
# Tag.create(name: 'safety')
# Tag.create(name: 'work')
# Tag.create(name: 'family')
Tag.create(name: 'COVID')

PostTag.create(post_id: 1, tag_id: 7)
PostTag.create(post_id: 1, tag_id: 8)
PostTag.create(post_id: 2, tag_id: 5)
PostTag.create(post_id: 2, tag_id: 6)
PostTag.create(post_id: 2, tag_id: 7)
PostTag.create(post_id: 3, tag_id: 2)
PostTag.create(post_id: 3, tag_id: 8)







Comment.create(user_id: 2, post_id: 1, body: 'omg I\'m so sorry!', image_url: '',)
Comment.create(user_id: 3, post_id: 1, body: 'Yeah, that really sucks. I lost my cousin Toni.', image_url: '',)
Comment.create(user_id: 1, post_id: 2, body: 'Good work keeping your family safe!', image_url: '',)
Comment.create(user_id: 3, post_id: 2, body: 'All I do in this pandemic is work.', image_url: '',)
