#Our Wágr

## an app for creating and joining in on bets. 

##technologies used
This application was used with the framework Rails. Building off of rails we used Ruby, Javascript,Html, Css 
and have implimented AJAX for certain parts of our website. 

## Approach we took 

With the application wagr we wanted to create a fun platform where a potential user can view bets made by 
other memebers of wager. A potential user can view these bets but won't be able to join or create a propisition until signing up. 
Once joined a user is encouraged to propose an outcome based on pop culture references , celebrities 
and sport amongst other categories. The user can go through with the bet only once another user has joined their bet with the oposing outcome.As many people can bet for or against but only the first ones to join that have a matched oposition will 
go into the draw when the deadline is reached.



This app Impliments the API Stripe, a RESTFUL API that allows a user of the website to access a payment platform from the 
front end.Using Stripe a person can credit their account and once they have enough money on the website they can join a bet. 

##User stories

This platform has three types of accounts There is an admin account a referee account and a general account. 
When first signing up a user is given a general account. Genral access allows them to create and join bets once they paid 
through stripe.The next acount is a referee, who can also create and join bets but is allowed to also judge a bet once it has passed the deadline. 
An admin account has the ability to edit and delete a bet.

The main focus of this website is split into three pages there is the landing page that has all the different bets created
by various users. After you click on a bet your taken to the single bet view. This displays the page that a single user has. This shows the single bet 
gives an explination of the bet. There is also the page that a user can make a payment that will be created to their account. 

Installation instructions for any dependencies
Link to your user stories – who are your users, what do they want, and why?
Link to your wireframes – sketches of major views / interfaces in your application
Descriptions of any unsolved problems or major hurdles your team had to overcome

##issues and things that we had to overcome 
We originally looked into using a gem called paperclip and there have been issues with the file attachement library when trying
to impiment this gem and didn't find the time to come back to figuring it out. 
Understanding and using Ajax was a difficult implimentation and still feels a little unclear. We managed to use it in the way
we intended for users when they join a bet. The join bet occures without the page refresh. Deleting a bet that 
someone has joined using ajax has been difficult and we didn't get around to finishing this within the project deadline.


Thanks for reading. 
This app was created by Andrew Pratley, Jordan Etzler and Tad Davis



#Bonus

Laden Thinks, instead of guessing the outcome of an event. The system selects a user and asks for a guess about a scenario, then other users are given the opportunity to guess what the first user predicted.
