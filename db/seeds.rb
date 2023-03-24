role_one = role.create(character_name: "Romeo")
role_two = role.create(character_name: "Juliet")
role_three = role.create(character_name: "Cinderella")

Audition.create (actor: "Stacy" , location: "New Jersey" , role_id: 1 )
Audition.create (actor: "Natalie" , location: "Hoboken", role_id: 2 )
Audition.create (actor: "Mia", location: "Florida" , role_id: 3)

