# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  User.create(first_name: "Jordan", last_name: "Etzler", user_name: "jozzza", email: "jordan@aruza.co", 
  password: "pudding", account_balance: 456.43, account_type: "admin" )

	User.create(first_name: "Tad", last_name: "Davis", user_name: "tadMcRad", email: "t@mail.com", 
  password: "pudding", account_balance: 24673894.75, account_type: "admin" )

  User.create(first_name: "Andrew", last_name: "Pratley", user_name: "andrew", email: "andrew@gmail.com", 
  password: "pudding", account_balance: 705.45, account_type: "admin" )

	User.create(first_name: "David", last_name: "Hasslehoff", user_name: "theHoff", email: "david@mail.com", 
  password: "pudding", account_balance: 90.00, account_type: "general" )

	User.create(first_name: "Kevin", last_name: "Spacey", user_name: "spaceman3", email: "kevin@mail.com", 
  password: "pudding", account_balance: 66.65, account_type: "general" )

	User.create(first_name: "queen", last_name: "elizabeth", user_name: "reptileOverLord", email: "queeny666@mail.com", 
  password: "pudding", account_balance: 230.50, account_type: "general" )

	
	Proposition.create(user_id: 1, title: "Will Et Go Home", description: "I want to know whats going to happen", image: "http://thepeoplesmovies.com/wp-content/uploads/2012/05/etbikescene-300x160.jpg", deadline: '25/08/2016/20/30/00' )
	
	
	Proposition.create(user_id: 2, title: "Can Hasslehoff Finish A Burger", description: "he has to eat the whole thing", image: "https://wehatesit.files.wordpress.com/2015/10/david-hasselhoff.jpg", deadline: '09/10/2016/15/20/00' )
	

	Bet.create(user_id: 1 , proposition_id: 2, bet_side: true, outcome: "can davis hasslehoff finish a burger", amount: 10.00, created_at: '08/23/2016/12/20/00')
	
	Bet.create(user_id: 2, proposition_id: 2, bet_side:  false, outcome: "can davis hasslehoff finish a burger", amount: 10.00, created_at: '08/23/2016/12/20/00')
  