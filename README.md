# Mario's Specialty Food Products
## Created by Lara Bjork on January 17, 2020
### Project Description

This project was completed as an independent assignment for the Ruby class at Epicodus, after a week focused on Rails with Active Record. The task description was as follows:

_You're in the running for a freelance development job as the developer for Mario's Speciality Food Products (or another fictional company of your choosing). First, Mario wants to make sure you're the right person for the job. He's asked you for an MVP and wants it by 5:00 tonight. The stakes are higher than usual, since Mario's old site had thousands of unique visitors each day. If you can get the job, this is a great way to increase your profile as a developer._

_In particular, Mario is concerned about the information in his database being correct; your goal for today is to have the most comprehensive validations and callbacks to ensure information is properly saved and formatted in the database._

I made this into a speciality coffee store, rather than food in general.

### Specifications
The assignment description provided the following specifications:

_* Database: The site should have functionality to review products so your database should include a one-to-many relationship between Products and Reviews. All products must have a name, cost and country_of_origin. All reviews should have an author, content_body and rating. (A rating can be a number between 1 and 5.) You can include other fields of your choosing as well._

_* Landing Page: The landing page should include basic information about the company and should allow users to easily navigate to other areas of the site. This page should also include the three most recently added products and the product with the most reviews. See more information in the Scopes section below._

_* Products: The site needs to include a products section with a list of the tasty products that Mario sells. Each product should be clickable with a detail view._
  _* Users should be able to add, update and delete new products. Don't worry about user authentication. Assume everyone who visits the site is an admin for now._
  _* Users should be able to click an individual product to see its detail page. (You will not be expected to show the product's average rating.)_
  _* Users should be able to add a review to a product._

_* Scopes: Your site should use scopes to display the following information on the site:_
  _* The product with the most reviews._
  _* The three most recently added products._
  _* All products made in the USA for buyers that want to buy local products._
  NOTE: The assignment asked us to allow people to view locally made products, but none of the data from Faker that I seeded had coffees from the USA (understandably). I used Rwanda instead for this scope.

_* Validations: Your site should include validations for the following:_
  _* All fields should be filled out, including rating._
  _* Rating can only be an integer between 1 and 5._
  _* The review's content_body must be between 50 and 250 characters._

_* Callbacks: Your site should include a callback for the following:
  _* All products are automatically titleized (first letter of each word capitalized) before they are saved to the database._

_* Seeding: Your project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database._

_* Flash Messages: The project should include flash success and error messages for creating products and reviews._

_* Overall Styling: You'll be demoing this site to the CEO of Mario's Specialty Foods, so it should look presentable._

### Technologies Used
Ruby 2.6.5, Rails 5.2.4, Bundler, PSQL/Postgres
Gems added manually after initial project setup: Capybara, jquery-rails, faker, bootstrap-sass, sassc-rails, rspec-rails, launchy, shoulda-matchers, bcrypt
Project was written using Google Chrome. No other browsers were tested.

### Project Setup instructions
1. Ensure that you have the correct versions of Ruby, Rails, and PSQL installed.
2. Clone the project locally from github (https://github.com/larabjork/mario-coffee.git).
3. Install Bundler if you do not already have it by running **gem install bundler** in the terminal.
4. Run **bundle install** to manage gems; if you make additional changes to the Gemfile, you will need to run this command again.
5. Run **rake db:create**, which should create two databases: **mario_coffee_development** and **mario_coffee_test**.
6. Run **rake db:migrate**, followed by **rake db:test:prepare**.
7. To seed the databases with placeholder information, run **rake db:seed**, which should give you 50 products and 250 reviews.
8. Enter **rails s** or **rails server** at the terminal prompt.
Open a browser window and type **localhost:3000** in the address bar.

If something doesn't display correctly or goes wrong somehow, please contact me at <lara.m.bjork@gmail.com> and I will do my best to troubleshoot for you.

### Known Issues and Limitations
* No known bugs.

### Where to Find This Project
https://github.com/larabjork/mario-coffee.git

### License
This software is licensed under the MIT license.

Copyright (c) 2020 Lara Bjork
