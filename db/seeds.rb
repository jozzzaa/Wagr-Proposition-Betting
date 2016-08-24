# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	Bet.destroy_all
	Proposition.destroy_all
	User.destroy_all

	##types of accounts
	##admin , ref and standard.
## need to create a ref- the person who can judge a question

  u1 = User.create(first_name: "Jordan", last_name: "Etzler", user_name: "jozzza", email: "jordan@aruza.co",
  password: "pudding", account_balance: 100.00, account_type: "admin" )

	u2 = User.create(first_name: "Tad", last_name: "Davis", user_name: "tadMcRad", email: "t@mail.com",
  password: "pudding", account_balance: 100.00, account_type: "admin" )

  u3 = User.create(first_name: "Andrew", last_name: "Pratley", user_name: "andrew", email: "andrew@gmail.com",
  password: "pudding", account_balance: 100.00, account_type: "admin" )

	u4 = User.create(first_name: "David", last_name: "Hasslehoff", user_name: "theHoff", email: "david@mail.com",
  password: "pudding", account_balance: 100.00, account_type: "standard" )

	u5 = User.create(first_name: "Kevin", last_name: "Spacey", user_name: "spaceman3", email: "kevin@mail.com",
  password: "pudding", account_balance: 100.00, account_type: "standard" )

	u6 = User.create(first_name: "queen", last_name: "elizabeth", user_name: "reptileOverLord", email: "queeny666@mail.com",
  password: "pudding", account_balance: 100.00, account_type: "standard" )


	p1 = Proposition.create(user_id: u1.id, title: "Will Et Go Home", description: "I want to know whats going to happen", image: "http://thepeoplesmovies.com/wp-content/uploads/2012/05/etbikescene-300x160.jpg", deadline: '22/08/2016/20/30/00', outcome: "nil")

	p2 = Proposition.create(user_id: u2.id, title: "Can Hasslehoff Finish A Burger", description: "he has to eat the whole thing", image: "https://wehatesit.files.wordpress.com/2015/10/david-hasselhoff.jpg", deadline: '21/08/2016/15/20/00', outcome: "nil")


	Bet.create(user_id: u1.id , proposition_id: p2.id, bet_side: true, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u4.id , proposition_id: p2.id, bet_side: false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p2.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	 Bet.create(user_id: u3.id, proposition_id: p2.id, bet_side:  false, amount: 10.00, created_at: '08/24/2016/12/20/00')
