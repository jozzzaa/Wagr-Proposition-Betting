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
	password: "pudding", account_balance: 230.00, account_type: "admin" )

	u2 = User.create(first_name: "Tad", last_name: "Davis", user_name: "tad", email: "t@mail.com",
	password: "pudding", account_balance: 880.00, account_type: "admin" )

	u3 = User.create(first_name: "Andrew", last_name: "Pratley", user_name: "andrew", email: "andrew@gmail.com",
	password: "pudding", account_balance: 770.00, account_type: "admin" )

	u4 = User.create(first_name: "Dean", last_name: "Cooper", user_name: "dean", email: "dean@mail.com",
	password: "pudding", account_balance: 10.00, account_type: "standard" )

	u5 = User.create(first_name: "Harry", last_name: "Spacey", user_name: "harry", email: "harry@mail.com",
	password: "pudding", account_balance: 30.00, account_type: "standard" )

	u6 = User.create(first_name: "Maggie", last_name: "elizabeth", user_name: "maggie", email: "maggie@mail.com",
	password: "pudding", account_balance: 140.00, account_type: "standard" )

	u7 = User.create(first_name: "Magda", last_name: "elizabeth", user_name: "magda", email: "magda@mail.com",
	password: "pudding", account_balance: 100.00, account_type: "standard" )

	u8 = User.create(first_name: "Dennis", last_name: "Ronaldo", user_name: "denis", email: "denis@mail.com",
	password: "pudding", account_balance: 400.00, account_type: "standard" )


	p1 = Proposition.create(user_id: u1.id, title: "Can Maggie Out Joust Harry", description: "The weekend begins with the jousting match of a lifetime", image: "http://www.knightsofmiddleengland.com/_gallery-image.aspx?ID=1556", deadline: '10/07/2016/10/30/00', outcome: 'nil', category: "sport" )

	p2 = Proposition.create(user_id: u2.id, title: "Can Hasslehoff Finish A Burger", description: "he has to eat the whole thing", image: "https://wehatesit.files.wordpress.com/2015/10/david-hasselhoff.jpg", deadline: '09/08/2016/15/20/00', outcome: 'nil', category: "" )

	p3 = Proposition.create(user_id: u3.id, title: "The queen of dragons will have her brother killed next episode", description: "In the last episode of Game of Thrones, Daenerys Targaryen's brother threathen her life. Do you think she will rise up and kill him or do you think she will let it go?", image: "http://digitalspyuk.cdnds.net/16/25/980x490/landscape-1466508335-20160602-ep609-publicity-still-00400095499.jpg", deadline: '07/08/2016/15/20/00', outcome: 'nil', category: "")

	p4 = Proposition.create(user_id: u4.id, title: "It will be sunny in Adelaide tomorrow with <5% precipitation", description: "Adelaide is normally very sunny, tomrrow however the weather forecast predicts rainy weather. But this is wager and I want to bet against the odds, I think it will stay sunny.", image: "http://www.abc.net.au/news/image/658928-3x2-940x627.jpg", deadline: '02/05/2016/15/20/00', outcome: 'nil', category: "" )

	p5 = Proposition.create(user_id: u5.id, title: "He will get high again next episode", description: "With the F Society now relying on him, with the impending destruction of the data centre, will he get high again to make it through or will he receover.", image: "https://pmctvline2.files.wordpress.com/2016/06/mr-robot-season-2-after-show.jpg?w=620&h=420&crop=1", deadline: '05/8/2016/15/20/00', outcome: 'nil', category: "" )

	p6 = Proposition.create(user_id: u2.id, title: "Mike Ross will escape prison illegally", description: "Oh no Mr. Ross is in prison, but he can't be in their forever can he. Do you think he will be able to get out and will it be legal or illegal?", image: "http://cdn2.thr.com/sites/default/files/imagecache/scale_crop_768_433/2016/07/suits_s01e01_still_2.jpg", deadline: '03/8/2016/15/20/00', outcome: 'nil', category: "" )

	p7 = Proposition.create(user_id: u6.id, title: "Magda's extreme ironing challenge", description: "Can Magda iron her clothes before deploying the parachute?", image: "http://slappedham.com/wp-content/uploads/2014/07/extreme-ironing-sky-dive.jpg", deadline: '27/08/2016/09/20/00', outcome: 'nil', category: "sport" )

	p8 = Proposition.create(user_id: u1.id, title: "Donald Trump runs for the toupee", description: "Can Donald Trump outrun his speedy toupee", image: "http://www.satiratribune.com/wp-content/uploads/2015/11/djt-hair.jpg", deadline: '01/09/2016/10/00/00', outcome: 'nil', category: "politics" )

	p9 = Proposition.create(user_id: u2.id, title: "Can Patrick build a house", description: "Can Patrick build a house", image: "https://41.media.tumblr.com/a52527ae97937197d97c394fc91874a3/tumblr_inline_nvq2fkQ37q1s0fbfv_540.jpg", deadline: '02/10/2016/9/00/00', outcome: 'nil', category: "politics" )

	p10 = Proposition.create(user_id: u2.id, title: "Will Matt Damon take his wife to mars", description: "Matt Damon wants to go to mars more than anything in the world! Can he persude his wife", image: "http://cdn.movieweb.com/img.news.tops/NEFs7NFMwKZnJL_1_b.jpg", deadline: '28/8/2016/11/11/00', outcome: 'nil', category: "celebrity" )

	p11 = Proposition.create(user_id: u2.id, title: "Can Dt get the highest score in Goat Simulator", description: "All the years of practice has lead to the championships", image: "https://i.kinja-img.com/gawker-media/image/upload/s--GfPQNgM---/x5kiy44eakeyephru0g8.jpg", deadline: '28/7/2016/11/11/00', outcome: 'nil', category: "celebrity" )

	Bet.create(user_id: u4.id, proposition_id: p1.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u7.id, proposition_id: p1.id, bet_side:  true, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u8.id, proposition_id: p1.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')


	Bet.create(user_id: u1.id, proposition_id: p2.id, bet_side: true, amount: 10.00, created_at: '08/20/2016/12/20/00')
	Bet.create(user_id: u2.id, proposition_id: p2.id, bet_side:  false, amount: 10.00, created_at: '08/21/2016/12/20/00')

	Bet.create(user_id: u1.id, proposition_id: p3.id, bet_side:  true, amount: 10.00, created_at: '08/15/2016/12/20/00')
	Bet.create(user_id: u3.id, proposition_id: p3.id, bet_side:  false, amount: 10.00, created_at: '07/20/2016/12/20/00')

	Bet.create(user_id: u4.id, proposition_id: p4.id, bet_side: true, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u5.id, proposition_id: p4.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u2.id, proposition_id: p4.id, bet_side:  true, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u7.id, proposition_id: p5.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u5.id, proposition_id: p5.id, bet_side:  true, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u1.id, proposition_id: p6.id, bet_side: true, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u7.id, proposition_id: p6.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u1.id, proposition_id: p7.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u4.id, proposition_id: p7.id, bet_side:  true, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p8.id, bet_side:  true, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u6.id, proposition_id: p8.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p9.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')

	Bet.create(user_id: u2.id, proposition_id: p10.id, bet_side:  true, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u6.id, proposition_id: p10.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')


	Bet.create(user_id: u4.id, proposition_id: p11.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u5.id, proposition_id: p11.id, bet_side:  true, amount: 10.00, created_at: '08/23/2016/12/20/00')
	Bet.create(user_id: u6.id, proposition_id: p11.id, bet_side:  false, amount: 10.00, created_at: '08/23/2016/12/20/00')
