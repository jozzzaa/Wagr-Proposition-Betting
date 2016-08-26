#Our Wágr

## An app for creating and joining in on bets. 

##Technologies used
This application was created with the framework Rails. We used Ruby, Javascript,Html, Css and have implimented AJAX for certain parts of our website. We managed team contributions using a standard git flow through github.  

## Approach we took 

With the application wagr we wanted to create a fun platform where a potential user can view bets made by other memebers of wager. A potential user can view these bets but won't be able to join or create a proposition until signing up. 
Once joined a user is encouraged to propose an outcome based on pop culture references , celebrities and sport amongst other categories.As many users can bet on a proposition and once another user has joined their bet with the oposing outcome this bet will then be judged at the deadline.

This app impliments the API Stripe, a RESTFUL API that allows a user of the website to access a payment platform from the 
front end.Using Stripe a person can credit their account and once they have enough money on the website they can join a bet. 

##User stories

This platform has three types of accounts There is an admin account a referee account and a general account. 
When first signing up a user is given a general account. Genral access allows them to create and join bets once they paid 
through stripe.The next acount is a referee,they can do the same as a general account but also judge a bet once it has passed the deadline. 
An admin account has extra ability to edit and delete bets.

##Description 
The main focus of this website is split into three pages there is the landing page that has all the different bets created
by various users. After you click on a bet your taken to the single bet view. This displays the page that a single user has, this shows the single bet gives an explination of the bet. There is also the page that impliments stripe here a user can make a payment that will be created to their account. 

##Viewing the website
This website is currently hosted on heroku at
[link to website](https://wagr-bet.herokuapp.com/)

[link to wire frames](https://postimg.org/gallery/1bs9i5v40/)


## Issues and difficulties 
We originally looked into using a gem called paperclip and there have been issues with the file attachement library when trying to impiment this gem and didn't find the time to come back to figuring it out. 
Understanding and using Ajax was a difficult implimentation and still feels a little unclear. We managed to use it in the way we intended for users when they join a bet. The join bet occures without the page refresh. Deleting a bet that 
someone has joined using ajax has been difficult to get working put we also managed to fix this issue.

##Installation Instructions (for local edit and play):

- Clone my master folder for Wagr (when you click the 'clone or download' link, copy the link).
- In your terminal, go to the directory where you want to clone this game to.
- Type git clone "link" e.g. https://github.com/taddavisweb/wagr
- After it has cloned, go into the folders and edit as desired.
- To play, install a virtual server like postgres and run it, and type ruby "rails s" in your console in the wagr folder. Identify the port it is using and go to your browser and enter the localhost and the port e.g. http://localhost:3000/


Thanks for reading. 
This app was created by Andrew Pratley, Jordan Etzler and Tad Davis



###Bonus

Laden Thinks, instead of guessing the outcome of an event. The system selects a user and asks for a guess about a scenario, then other users are given the opportunity to guess what the first user predicted.
