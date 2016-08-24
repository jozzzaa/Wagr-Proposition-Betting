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


	p1 = Proposition.create(user_id: u1.id, title: "Will Et Go Home", description: "I want to know whats going to happen", image: "http://thepeoplesmovies.com/wp-content/uploads/2012/05/etbikescene-300x160.jpg", deadline: '25/08/2016/20/30/00', outcome: 'nil' )

	p2 = Proposition.create(user_id: u2.id, title: "Can Hasslehoff Finish A Burger", description: "he has to eat the whole thing", image: "https://wehatesit.files.wordpress.com/2015/10/david-hasselhoff.jpg", deadline: '09/10/2016/15/20/00', outcome: 'nil' )

	p3 = Proposition.create(user_id: u2.id, title: "The queen of dragons will have her brother killed next episode", description: "In the last episode of Game of Thrones, Daenerys Targaryen's brother threathen her life. Do you think she will rise up and kill him or do you think she will let it go?", image: "http://digitalspyuk.cdnds.net/16/25/980x490/landscape-1466508335-20160602-ep609-publicity-still-00400095499.jpg", deadline: '28/10/2016/15/20/00', outcome: 'nil' )

	p4 = Proposition.create(user_id: u2.id, title: "It will be sunny in Adelaide tomorrow with <5% precipitation", description: "Adelaide is normally very sunny, tomrrow however the weather forecast predicts rainy weather. But this is wager and I want to bet against the odds, I think it will stay sunny.", image: "http://www.abc.net.au/news/image/658928-3x2-940x627.jpg", deadline: '29/10/2016/15/20/00', outcome: 'nil' )

	p5 = Proposition.create(user_id: u2.id, title: "He will get high again next episode", description: "With the F Society now relying on him, with the impending destruction of the data centre, will he get high again to make it through or will he receover.", image: "https://pmctvline2.files.wordpress.com/2016/06/mr-robot-season-2-after-show.jpg?w=620&h=420&crop=1", deadline: '05/10/2016/15/20/00', outcome: 'nil' )

	p6 = Proposition.create(user_id: u2.id, title: "Mike Ross will escape prison illegally", description: "Oh no Mr. Ross is in prison, but he can't be in their forever can he. Do you think he will be able to get out and will it be legal or illegal?", image: "http://cdn2.thr.com/sites/default/files/imagecache/scale_crop_768_433/2016/07/suits_s01e01_still_2.jpg", deadline: '03/10/2016/15/20/00', outcome: 'nil' )


	Bet.create(user_id: u1.id , proposition_id: p2.id, bet_side: true, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p2.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p3.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p3.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u1.id , proposition_id: p2.id, bet_side: true, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p2.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p3.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p3.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u1.id , proposition_id: p2.id, bet_side: true, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p2.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p3.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p3.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')
