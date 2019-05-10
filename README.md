# 3Directions Rails Application
## By Natasha Khatri and Luke Turner

## App URL
https://threedirections.herokuapp.com

## GitHub Repository
https://github.com/luketurnerdev/rails-assessment

## Description Of Project
3Directions is a 2 way marketplace that connects designers wishing to print their designs with people who own 3D printing facilities. Users are able to sign up either as a designer or a printer, and 3Directions will connect the two parties together, enabling 3D printing transactions to be made.

* These 2 parties will henceforth be referred to as 'designers' and 'printers'.

### Problem Definition / Purpose

Our app aims to bridge the gap between people who want 3D prints done and the people who are able to provide this service. Such groups as amateur designers, hobbyists and people wanting to buy gifts may find the idea of 3D printing appealing but not want to invest in a printer themselves, nor do they have access to these services already. Conversely, people with 3D printers can begin to make some extra money from a resource that they may have had sitting around for a while. The service also caters to larger-scale 3D printing businesses such as Universities by allowing variation on product size.

### Functionality / Features

#### Functionality as a designer

Designers will have the ability to:
    
    * Sign up for a new account (and have this information stored in the database)
    * Login to their existing account (retrieving said information from the database)
    * Create a new listing, including the uploaded file to be printed, their budget and due date
    * View listings they have created, and others on the platform
    * Edit these listings if they want to make a change
    * Receive quotes from printers, with the price and size of the print listed.
    * Accept said quote, taking them to a payment page (Stripe). They can then pay and receive a confirmation.
    * Once the payment has been made, they can view the progress of their job as it is being printed, as well as view past jobs
    * The designer can pickup their job from the printer or optionally have it mailed out.

#### Functionality as a printer

Printers will have the ability to:

    * Sign up for a new account, and specify the types of files they accept, as well as listing their ABN
    * Login to their account
    * View listings made by designers (all)
    * Go into a specific listing and optionally make them a quote with the size of the job and the amount to be charged, and an optional comment.
    * Edit a quote if they would like to change any details.
    * If the quote has been accepted, they will receive payment via Stripe.
    * View ongoing jobs to be printed, as well as jobs that have been completed in the past.

### Screenshots

[insert once styling is done]

### Tech Stack (e.g. html, css, deployment platform, etc)

- Ruby/Rails
- HTML
- CSS (Bootstap, SASS, Flexbox)
- Javascript
- PostgresQL database
- Stripe for payments
- Dbeaver for database GUI
- Heroku for deployment
- GitKraken / Glo boards for source control and project management
- Google Sheets / Google docs for extra day planning and organization

### Instructions on how to setup, configure and use your App.
1. Open the app in heroku (https://threedirections.herokuapp.com)

2. Signing up 

When first opening the app, you will be taken to a landing page that has 2 links: Sign up as a Printer, and Sign up as a Designer. Users may choose either role as their account type, and this will take them to a signup page. From here, you will need to enter the following:

* First name
* Last name
* Phone number
* Postcode
* Email
* Password (and confirmation)

If you have chosen to sign up as a printer, you will be taken to an additional page, where you must enter your printer model and your ABN. Once this step is complete, you will be taken to your dashboard.

3. Using the dashboard as a designer

If you are a designer, you will be given the options of viewing existing listings, viewing quotes made to you by printers, and viewing ongoing jobs.

#### Viewing listings

This page will display listings that you have personally created. As a designer, you are not able to view other listings. There is also a link for creating a new listing.

#### Creating a new listing

On the create listing page, you will be asked to enter some information about your listing: 

* A description (what the product is, and any details you want to include about it)
* Your budget (the maximum amount you'd like to spend on the print)
* Due date (when you need the print to be completed by)
* Design file (the file you want to be printed, created in a program such as CAD).

After entering this information correctly, you will be taken to the listing you have just created. If there are errors, they will be displayed and you must fix them before proceeding.

#### Viewing a created listing

On a particular listing page, you will see the description, budget, due date and picture you have uploaded (design file), as well as the date and time that the listing was created. From here you can edit the listing, view any quotes on the listing, or go back to view all your listings.

#### Editing a listing

Clicking the edit button on a listing takes you to the same form that was used to create the listing initially, but you may alter any details as you wish. When you are done, you can click 'Update Listing' and see your altered changes.

#### Viewing quotes on a listing

If you click on 'view quotes', you will be taken to a page where all the quote offers that have been made on this listing are displayed. You will be able to see the price of the quote, the size that the printer states the print will be, and when they are able to complete it by.

#### Viewing a specific quote

Viewing a particular quote shows the same information, but with a button to accept the payment. Clicking this button takes you to Stripe, where you will be able to enter your credit card details in order to complete the transaction.

#### Once the transaction is complete

If your stripe payment is successful, you will be taken to a page indicating that the payment has worked. A job will have then been created. From your dashboard, you can view all the jobs that have been created for your listings. These jobs will display all the relevant information that was listed in the quote, plus an additional status indicator telling you whether or not the job is complete.

4. Using the dashboard as a printer

The printer's dashboard looks quite similar to the designer's - however, certain actions are restricted, and some others are enabled.

#### Viewing listings

As a printer, you are able to view all listings made on the app. 

#### Viewing a specific listing

Clicking on any listing will bring up the listing in question, with the relevant information displayed. From here you are able to create a new quote, or view quotes that you personally have created for this listing.

#### Creating a new quote

Clicking the 'create quote' button brings you to a screen to enter all the relevant information for your quote:

* Total price you will charge for the job
* The size of the job (in cm^3) that you have determined after looking at the design file
* The time that you will be able to complete the job by (turnaround time)

Once the information has been entered (if there are no errors), you will be taken to the quote you have just created. From here you are able to edit the quote, or go back.

#### Editing a quote

Editing an existing quote takes you to the same form as creating a new one, and you may amend any information that you wish to. You will need to fill in all fields.

5. Viewing 'My Quotes'

As either type of user, you are able to view 'My Quotes' from the dashboard, which will bring up:

* All quotes on any of your listings (as a designer)
* All quotes that you have made on any listings (as a printer)



## Design Documentation including,
### Design Process

![whiteboard-ideas](https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/app-idea-brainstorm.jpg "Whiteboard ideas")

[Design ideas and planning](./docs/screenshots/Planning/3D printing Project Planning and ideas.pdf)

![Moodboard](https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/screenshots/Planning/pinterest_moodboard.jpg "Pinterest Moodboard screenshot")

![Font Selection](https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/screenshots/Planning/font_selection.png "Google Font selection screenshot")


### User Stories

#### User Story 1

As Jemima, I want to make use of my 3D printer to make extra money without much effort.

#### User Story 2

As Alex, I want to bring my CAD designs to life so that I can prototype them to my clients.

#### User Story 3

As Fredrich, I want to print my designs quickly and cheaply to avoid using the printers at my University.

#### User Story 4

As Esperanza, I want to print a necklace with my own design so that I can give it as a gift.

### Workflow Diagram of the user journey/s.

1. Designer

![designer-flow](https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/screenshots/workflows/Designer%20Workflow%200.1.jpg "Designer workflow")


2. Printer

![printer-flow](https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/screenshots/workflows/Printer_userflow%20(1).jpg "Printer workflow")


### Wireframes

[Wireframe Sketches](.docs/screenshots/Wireframes/Wireframe-Sketches-1.jpg)

[Wireframe Sketches](.docs/screenshots/Wireframes/Wireframe-Sketches-2.jpg)

[Wireframe Sketches](.docs/screenshots/Wireframes/Wireframe-Sketches-3.jpg)

[Wireframe Sketches](.docs/screenshots/Wireframes/Wireframe-Sketches-4.jpg)

[Wireframe Sketches](.docs/screenshots/Wireframes/Wireframe-Sketches-5.jpg)

[Wireframe Sketches](.docs/screenshots/Wireframes/Wireframe-Sketches-6.jpg)

[Wireframe Sketches](.docs/screenshots/Wireframes/Wireframe-Sketches-7.jpg)

[Wireframe Sketches](.docs/screenshots/Wireframes/Wireframe-Sketches-8.jpg)

[Designer Desktop Wireframe](./docs/screenshots/Wireframes/Desktop-Wireframes_Designer.pdf)

[Printer Desktop Wireframe](./docs/screenshots/Wireframes/Desktop-Wireframes_Printer.pdf)

[Designer Mobile Wireframe](./docs/screenshots/Wireframes/Mobile-Wireframes_Designer.pdf)

[Printer Mobile Wireframe](./docs/screenshots/Wireframes/Mobile-Wireframes_Printer.pdf)


All 4 of our wireframes (Designer and printer, desktop and mobile) can be found in PDF form at this google drive link as a backup https://drive.google.com/drive/folders/1P3Ci6tQ2-w5G4fJ94v-8zAnKt8SM1ZVI?usp=sharing 


### Database Entity Relationship Diagrams
![Entity relationship diagram](https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/screenshots/ERD/3D%20Printing%20ERD.png "Entity relationship diagram")


## Details of Planning process
### Project plan & timeline

[Project plan & timeline](.docs/screenshots/Planning/Project Plan - 3D Print.pdf)

### Screenshots of Trello board(s)

For this project, we used a combination of approaches to organize tasks to be completed.

We used GitKraken's Glo board for project management at a high level level of abstraction - We listed tasks for the biggest chunks of the project to be completed. This helped see everything at a glance.

The glo board was separated into several cards: 

1. Backlog - Tasks to be completed that haven't been given any further details such as due date or assigned to a team member

2. To Do - Tasks that have been given a deadline and are being worked on by a specific person (or both of us)

3. In development - This feature has started being coded, but is not functional yet.

4. Testing - The feature seems to work smoothly, and will be put aside until testing begins towards the end of the project

5. Finished - Features that are 100% working after testing is complete.

6. Stretch goals - Features to implement if there is enough time.

![Glo board screenshot 1](https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/screenshots/Planning/Glo1.png "Glo board screenshot")

![Glo board screenshot 1]https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/screenshots/Planning/Glo2.png( "Glo board screenshot")

On a daily basis, we used Google Sheets to organize tasks for the day. Each day we would list the tasks to be completed by each team member by the end of the day. We coloured in the cell yellow when it was in progress, and green when it was complete. At times we shifted tasks to the next day's sheet when they weren't completed by the end of the day.

The spreadsheet can be viewed here: https://docs.google.com/spreadsheets/d/1dflTU3Hk8w90SW6gPZDRxiEa19axQ65TlZpEr7AAzqA/edit?usp=sharing

![Google sheets - daily tasks](https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/screenshots/Planning/Daily%20Tasks%20Sheet.png "Google sheets daily tasks")


## Short Answer Questions
#### 1. What is the need (i.e. challenge) that you will be addressing in your project?

We are addressing the need that amateur and professional designers have to print their products, where currently it is impractical and expensive to print it themselves. We are also addressing the need that 3D printer owners have to make a return on the investment they have made in the printers they have purchased.

#### 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

Currently, there are a lot of amateur and professional designers who are wanting their designs printed but cannot due to accessibility and price. For example, a designer might find several 3D printing services online, but they may be too far away from them to pickup, or too expensive / fragile to ship. This service would allow them access to a variety of different printers from different locations, allowing them to make their own decision.

 There is also a market of people who own 3D printers but do not have a reason to use them on a regular basis (e.g.,they have been sitting around in a garage). These people may have spent a lot of money purchasing said printers upon their first release, as a hobbyist, and this service would provide them with a way to make some of that money back without much effort.


#### 3. Describe the project will you be conducting and how. your App will address the needs.

Our project will be a 2 way marketplace that allows users to sign up either as Designers or Printers, and connect with eachother to perform printing jobs for an agreed upon price. This provides an easy-to-use platform for one group to find the other, and complete the task required.

#### *. Describe the network infrastructure the App may be based on.

This application is deployed on the Heroku platform, which is in many ways the same as a web host as they are storing and running your website on the internet using its own servers.

The user will enter the 3Directions URL into their browser, this will send a HTTP request to the Internet Service Provider (ISP). The ISP will request the IP address from the Domain Name Server (DNS) to find the linked IP address and web server before it retrieves the data to load on the browser. Following this, the ISP will request to load files from the Heroku Web Server, which stores the app.

#### *. Identify and describe the software to be used in your App.
The application will be built in Ruby on Rails, which utilizes the Ruby programming language and combines this functionality with HTML, CSS and other languages, as well as providing software functionality for managing an application on the web (such as database management).

The software (including default Rails code) utilizes Object Oriented Programming (OOP), where classes and objects are used to create and manage data within the flow of the program. Methods are defined in the controllers, and are used to manipulate data found in the Models, then display this data to the views.

#### 6. Identify the database to be used in your App and provide a justification for your choice.
This application will be using the PostgresQL database as it is compatible with the other elements of our tech stack such as Heroku and Dbeaver. It is also widely supported in the community and thus has many resources available for it.

#### 7. Identify and describe the production database setup (i.e. postgres instance).

The application runs on PostgresQL, and consists of a series of tables for the models in the app (described further below). This PostgresQL instance then interfaces with Heroku, to create a database on the Heroku server that can be publicly accessed.

The database is initially created with rails db:create, migrations run with db:migrate, and seeded with db:seed.

The models are accessed through controller methods, which extract and manipulate data as users interact with the app and complete transactions.

Modifications can be made to the deployed database by running heroku commands from the Terminal (such as heroku run rake db:seed) in a similar way that they are run locally.

#### 8. Describe the architecture of your App.

This is a rails application which employs the MVC (Model, View, Controller) architecture:

The Models maintain the data that is being used in the program and provide links between different data tables. We use the following models in our program, connected through Postgresql database:
* User (contains all the users that sign up for the application)
* Printer (contains all users selecting the user type "printer" - this is linked to user with a foreign key)
* Listing (contains all listings posted on the application - also serves as a unique identifier for designers, because only designers can post listings)
* Quotes (contains all quotes that have been made by Printers on Designer's listings. Is linked to both Printer and Listing, as well as User indirectly through these two tables)
* Jobs (contains all quotes that have been accepted and paid for through Stripe. Jobs are then printed by the printer then marked as complete once they are done)

The following views are used in our program to provide output to the user, with minimal logic (generally limiting logic to an iterator to display data, or a one line if statement where necessary):

* The index page (landing page)
* The sign up page, which is passed parameters depending on the user type
* The printer information page (containing extra information only pertaining to printers)
* The dashboard (what users see when signed in)
* The listings page
* Viewing a particular listing
* Making a new listing
* The quotes page
* Viewing a particular quote
* Making a new quote on a listing
* Making payments on a quote (handled externally via Stripe)
* The jobs page
* Viewing a particular job (including a button available to printers to mark the job as complete)
* Edit pages for listings and quotes, which appear identical to the 'new' pages, but amend the information instead of creating a new instance

The views are deployed through Heroku to allow user access.

The Controllers in our program are used to provide Ruby logic between the Models and the Views:

* Listings controller - this handles all the logic for the listings, including creating instance variables to be used elsewhere, error handling, authorization and authentication

* Quotes controller - similar functionality to the listings controller, with the added function of creating Stripe sessions such that designers can pay for the quotes

* Payments controller - Once a stripe session has been entered, the output from the external Stripe page is fed into this controller. It determines if a user's payment was successful or not, and displays the appropriate page. It also handles the creation of new jobs as a result of successful payments.

* Jobs Controller - allows users to view all jobs, a particular job, or update the details of a job (if the printer has completed the job, they click a button to update the job status and time of completion)


#### 9. Explain the different high-level components (abstractions) in your App.

1. Posting a listing

When a designer signs up for the website, they are then able to post new listings for printing jobs to be completed. When they do, the Listing model is updated with the details that they have listed. This table is also linked to the User table such that the designer can be linked to this particular listing in the database (a user can have_many listings)

2. Making and receiving quotes 

Once a listing is created, printers are able to offer quotes on those listings. This utilizes the Listing model, and associates it with a new entry in the Quote model (a listing can have_many quotes). Other information is also included, such as Job size, total price they want to offer, and the time that they'll be able to have it completed by.

3. Paying for quotes and creating jobs

When a designer is viewing a particular quote, they are able to choose the 'Accept Quote' option, which will take them to a stripe payment page. If their payment is successful, a job will be created in relation to that listing, and also that printer. (A printer can have_many jobs, but a listing can only have_one job.) 



#### 10. Detail any third party services that your App will use.

* Devise
3Directions has used the Devise gem for all user authorisation and model setup. We customized the sign-up forms to account for two different user types. Devise was also the basis for how our user model was setup.

* Stripe
3Directions used Stripe for payment processing. This also requires setting up authentication through use of API keys. We implemented webhooks to be notified about any transactions that occur in our account, this also allows us to use payment information in order to create new instances of jobs in our Model.

* AWS-SDK-S3 
3Directions used Amazon Simple Storage Service for image/file uploads and storage. We also provided download links to allow printers to view and download the file and determine quote details.


#### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).


#### 12. Discuss the database relations to be implemented.

  The User model is the basis from which all 3Directions models are formed. Most models belongs_to a user, which allows access to user information easily and also filters what is visible to each individual user through authorization. Each user has a user_type enum, which allows 3Directions to categorise the user as a printer or designer. 

  The User table is related to all other databases through the has_many relationship. A User can have many listings (directly), quotes or jobs (indirectly through a listing). The Printer table is a join table with the User model. 
  
#### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

[Brief sentence about how the models talk to eachother (has_one, has_many etc)]


#### 14. Provide your database schema design.
![Entity relationship diagram](https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/screenshots/ERD/3D%20Printing%20ERD.png "Entity relationship diagram")

#### 15. Provide User stories for your App.
* As Jemima, I want to make use of my 3D printer to make extra money without much effort.
* As Alex, I want to bring my CAD designs to life so that I can prototype them to my clients.
* As Fredrich, I want to print my designs quickly and cheaply to avoid using the printers at my University.
* As Esperanza, I want to print a necklace with my own design so that I can give it as a gift.

#### 16. Provide Wireframes for your App.
[Designer Desktop Wireframe](./docs/screenshots/Wireframes/Desktop-Wireframes_Designer.pdf)

[Printer Desktop Wireframe](./docs/screenshots/Wireframes/Desktop-Wireframes_Printer.pdf)

[Designer Mobile Wireframe](./docs/screenshots/Wireframes/Mobile-Wireframes_Designer.pdf)

[Printer Mobile Wireframe](./docs/screenshots/Wireframes/Mobile-Wireframes_Printer.pdf)

#### 17. Describe the way tasks are allocated and tracked in your project.
how tasks were divided

#### 18. Discuss how Agile methodology is being implemented in your project.
  We implemented agile project management into our project through firstly going through the following:
  * Planning, including developing user stories for types of users, wireframes, ERD and user flows.
  * We tracked our progress through use of GitKraken Glo Board, where we divided it into columns based on ideas, to do tasks, testing, development and completed tasks.
  * We collaborated on the project through daily team meetings, Slack conversations and phone calls where we set tasks and goals for the day.
  * After each task was developed, we tested the process by finding any bugs or errors and incorporating this into our lessons learnt and if improvement was needed.

#### 19. Provide an overview and description of your Source control process.
git hub / gitkraken

#### 20. Provide an overview and description of your Testing process.
byebug, automated testing with cypress

#### 21. Discuss and analyse requirements related to information system security.
credit cards and user info hosted by third party

#### 22. Discuss methods you will use to protect information and data.
passwords - devise encrypts
stripe - how they protect payment

#### 23. Research what your legal obligations are in relation to handling user data.
