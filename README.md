# Wealthy Pockets®
This is the first Solo Project for CodeClan, Cohort3.  
The purpose of this project is to consolidate what we've been learning during our first month and possibly expanding it with further features.  
Finally, we will present our final product explaining our code what we've learned in the process, our obstacles, etc.  
We have to choose [_**one**_ among the following ideas](https://github.com/FrancescoPalma/CodeClan_Assignment_1/blob/master/projects.md) and build a web application according to the specs of the related project.  
I have chosen the **second project** (i.e. MoneyCashBoard) for I have a real interest in applying technology to finance, especially **financial inclusion** and **financial education**. Therefore, I want to start practicing on building apps on this topic.  

**Time:** From Thursday 11/03/16 to Thursday 18/03/16  
**Concepts to be applied:** Ruby, TDD, OOP, Web Programming(MVC, REST), Relational Databases with CRUD actions  
  
**Requirements for MVP:**  
- Create new transactions  
- Display all transactions  
- Display total expenditure  
- Display total expenditure by tag  
  
**Potential Further functionalities to build:**  
- CRUD actions for the transactions  
- Create a route that sends down Account data as JSON  
  
## My App Journal | Your App Guide  
I am a Software Developer in training and this is my very first solo project at CodeClan.  
Therefore, I've decided to post here a daily journal with the purpose to give the reader an enjoyable time to spend on this Repo.  
For such reasons, this is a journal to me but an optional further guide to you as a reader, especially if you're a beginner or a trainee like me who wonders what is it like to create an app.  
On my Github, **Curiosity** is a **Value**.
  
![alt text](http://cdn-media-2.lifehack.org/wp-content/files/2015/07/Learning-Quotes-16-of-16.jpg)  
  
#### Day 1  
Today I've been working on the planning of the app writing notes and using the white board.  
i found really beneficial to share thoughts with other coworkers who are going to build the same app.  
We worked on the MVC model, we designed the database and we came up with a potential final interface.  
Even if we are all going to build our own project with our own structure and style I think it's important to share first some ideas and collaborate before tackling the project.  
  
#### Day 2  
Today I didn't have enough time to start coding for I participated in an amazing series of talks about Webpack and Xamarin.iOS. Therefore, I've decided to draw a final design plan for the app.  
Tomorrow I'm going to start coding to focus my efforts on the back-end side of the project.  
  
#### Day 3  
Today I've spent most of the day working on the back-end. The tests pass, I've created the database and its tables, I've set up the skeleton of the app by organising folders and files and I've inserted the seed data.  
I've decided to try building a further functionality: **Income**.  
I want my app to display the running total of the expenses as well as the income (per month) in order to calculate a final balance. So far no real obstacles even though I am still in the process of trying to keep my focus on a 'step by step' aproach without falling into the trap of 'overthinking' or 'overengineering'.  
One functionality at a time, it's my current motto.  
A lesson I learnt today is that planning is important - planning _well_ is actually **fundamental** - and I like it even though at the end it's even more important to start coding, see the outcome and making the appropriate changes accordingly.  
#### Day 4  
I've got most the back-end set but I've fallen in several errors. Certain routes in the 'controller' files work whereas others throw `NoMethodErrors`.  
I haven't had enough time to investigate enough on these errors, tomorrow in class it will be mostly a debugging day for once the errors are fixed, the last things to do are to work on the `.erb` files of the models and to find a way to display a running total of the expenses and income so that the user figures out at the end of each month whether the final balance is positive or negative.  
Also, I'll try to have a talk with other coworkers in order to give one another some feedback and talk about any obstacles we might have found before getting back to work. I am sure it will be beneficial for all of us.  
  
#### Day 5  
_**The Power of the Collective**_: As I thought, exchanging feedbacks helps a lot. Especially in programming, where to spot the detail is essential and sometimes you need more eyes and more brains to cooperate.  
So far, I've completed 50% of the MVP and I can say with absolute certainty that the app essentially **works**.  
Tomorrow I'll focus to complete the last part of the MVP (display total expenses, total incomes, total expenses by category) and I'll do a general review to refactor the `.erb` files in `Views`.  
Finally, I hope to allow some time to think about the front-end (i.e. CSS) to make the app looks as I want it to be.  
Style at this point is not _fundamental_, the purpose is to practice on the back-end, but if I had some time I think it would be valuable to learn some new CSS skills to improve the style. I already had since the beginning an idea of how to organise the interface, I'll hopefully work on it between tomorrow afternoon and Day 6.  
  
#### Day 6  
Today's been a long day and the time I am writing this is a witness (i.e. 01,30am). Actually, I almost forgot how much stuff I've done today. As far as I remember, I have really **completed** the back-end and the app works fine in all of its functionalities, so I'll just review in general the code before _deployment_.  
Until now I have refactored the `.erb` files in `Views`, the HTML and I've done some CSS to add a basic mobile responsiveness functionality to the web app. Tomorr... Actually, later on today I will get to work on the **front-end**, I've got stored some real nice ideas. No hints though, I am not a fan of spoilers.  
  
#### Day 7
Today's been another quite long day, it's been the funniest day and this project week has been one of the happiest in my life. Tomorrow we will all present shortly our web app.  
I am really proud of my app because this is my very first full stack web app, a small, automated and efficient software.  
This reminds me why I chose to become a Software Engineer, the **joy of creation** and the excitement of facing new challenges.  
This app has been a test. Before deciding to move to Scotland I wondered if I had the right skills to be a programmer, but after this assignment I feel more confident than ever. I faced this project with the right aptitude and I am truly happy of the process and the result.  
From Monday I will gather with an old friend of mine, **JavaScript**. Our paths already crossed when I had been initiated to programming. It's been the **first** programming language I learnt.  
My personal journey with **Ruby** will be then interrupted, but not terminated. I fell in love with this lovely language - the true **zen of coding** - and I can't wait to work with **Rails** in the future.  
I perceive Ruby and JavaScript like those people you become friends with when you're a child, you may not keep in touch forever but you will **never** forget them. So, as always, I look forward to _learning new things_.  
  
Dear Reader/User/Friend,  
This is my last journal update regarding this assignment.  
What comes after this is a sort of technical description of the app, you're welcome to continue your reading if you wish.  
I hope you enjoyed it and thank you for your valuable time.  
  
Rasen_San  
Edinburgh, 16th March 2016  
  
## A technical description of the app  
  
**Back-End Functionalities:**  
  
- Display all the expenses, merchants, categories, incomes
- Display the current balance (i.e. incomes running total - expenses running total)
- Display the total amount by category and by merchant
- Display specific expenses, merchants, categories, incomes
- Edit specific expenses, merchants, categories, incomes
- Add new expense, merchant, category, income
- TDD on `models` (account, transaction, income, merchant, category)
- Seeds data
- PostGreSQL database with 4 tables (Transactions, Merchants, Categories, Incomes)
- Transactions table is a Joined Table with references to the `id` of Merchants and Categories as `Foreign Keys`
- The app has been built following the principles of REST with the Ruby webframework Sinatra and using MVC  

**Front-End Stack:**  
  
- The `views` files have been built with plain HTML and EmbeddedRuby (i.e. `erb`)
- Plain CSS for the style, no frameworks used, no JavaScript or jQuery
- The app is **100% mobile responsive** using `@media queries` for Responsive Web Design  
  
**Implementations before deployment:**  
  
- Turn `INT` into `FLOAT` inside the Database **√**
- General refactoring/implementation of the codebase **√**
- ~~Implement Responsiveness in CSS~~
- ~~Implement overall CSS architecture (maybe with [BEM](https://css-tricks.com/bem-101/))~~  
  
After spending a weekend on reading about responsive design with CSS and [BEM](https://css-tricks.com/bem-101/)) (which is **fantastic**) I understand how can just plain CSS become so complex and full of options for Front-End Development.  
I can see the value in choosing or even creating an architectural style for my own CSS before thinking of the interface, its design and its code. I've then decided to do not dive into any further implementation of this app (at the moment).  
The responsiveness performs quite well and I am proud of the final result, I will certainly take some time to practice and implement it for the next Project. Same goes for the overall content structure and style.  
  
## Ready to Launch! :rocket:  
The App is now ready on [Heroku!](https://wealthypockets.herokuapp.com/)  
Thank you [Scott](https://github.com/scott-ad-riley) for your help on fixing the issue with thee Database connection.

2016 © Francesco Palma - This project is registered under the [MIT License](https://github.com/FrancescoPalma/CodeClan_Assignment_1/blob/master/License)
