# 3D PRINTING RAILS APP

## App URL

## GitHub Repository
https://github.com/luketurnerdev/rails-assessment

## Description Of Project
[3D printing service] is a 2 way marketplace that connects designers wishing to print their designs with people who own 3D printing facilities. Users are able to sign up either as a designer or a printer, and [3D printing service] will connect the two parties together, enabling 3D printing transactions to be made.

### Problem Definition / Purpose

Our app aims to bridge the gap between people who want 3D prints done and the people who are able to provide this service. Such groups as amateur designers, hobbyists and people wanting to buy gifts may find the idea of 3D printing appealing but not want to invest in a printer themselves, nor do they have access to these services already. Conversely, people with 3D printers can begin to make some extra money from a resource that they may have had sitting around for a while. The service also caters to larger-scale 3D printing businesses such as Universities by allowing variation on product size.

### Functionality / Features

#### As a designer

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

#### As a printer

Printers will have the ability to:

    * Sign up for a new account, and specify the types of files they accept, as well as listing their ABN
    * Login to their account
    * View listings made by designers (all)
    * Go into a specific listing and optionally make them a quote with the size of the job and the amount to be charged, and an optional comment.
    * Edit a quote if they would like to change any details.
    * If the quote has been accepted, they will receive payment via Stripe.
    * View ongoing jobs to be printed, as well as jobs that have been completed in the past.

### Screenshots

### Tech Stack (e.g. html, css, deployment platform, etc)

- Ruby/Rails
- HTML
- CSS
- Javascript
- PostgresQL database
- Stripe for payments
- Dbeaver for database GUI
- Heroku for deployment

### Instructions on how to setup, configure and use your App.

When first opening the app, you will be taken to a landing page that has 2 links: Sign up as a Printer, and Sign up as a Designer. Users may choose either role as their account type, and this will let them sign up.

####If you are a designer

You can make a new listing by clicking 'Create listing', where you will enter the details of the design you need printed.

## Design Documentation including,
### Design Process
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

All 4 of our wireframes (Designer and printer, desktop and mobile) can be found in PDF form at this google drive link (to save uploading ~48 images to github): https://drive.google.com/drive/folders/1P3Ci6tQ2-w5G4fJ94v-8zAnKt8SM1ZVI?usp=sharing 

Here is a backup link if that doesn't work:

https://www.dropbox.com/sh/rmgfyh0l5a31htn/AAC1y8hAI7Vf5Z0cKLfY1Jcka?dl=0 



### Database Entity Relationship Diagrams
![Entity relationship diagram](https://github.com/luketurnerdev/rails-assessment/blob/dev/docs/screenshots/ERD/3D%20Printing%20ERD.png "Entity relationship diagram")


## Details of Planning process including,
### Project plan & timeline

For this project, we used a combination of approaches to organize and 
### Screenshots of Trello board(s)

## Short Answer Questions
#### 1. What is the need (i.e. challenge) that you will be addressing in your project?

We are addressing the need that amateur and professional designers have to print their products, where currently it is impractical and expensive to print it themselves. We are also addressing the need that 3D printer owners have to make a return on the investment they have made in the printers they have purchased.

#### 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

Currently, there are a lot of amateur and professional designers who are wanting their designs printed but cannot due to accessibility and price. For example, a designer might find several 3D printing services online, but they may be too far away from them to pickup, or too expensive / fragile to ship. This service would allow them access to a variety of different printers from different locations, allowing them to make their own decision.

 There is also a market of people who own 3D printers but do not have a reason to use them on a regular basis (e.g.,they have been sitting around in a garage). These people may have spent a lot of money purchasing said printers upon their first release, as a hobbyist, and this service would provide them with a way to make some of that money back without much effort.


#### 3. Describe the project will you be conducting and how. your App will address the needs.

Our project will be a 2 way marketplace that allows users to sign up either as Designers or Printers, and connect with eachother to perform printing jobs for an agreed upon price. This provides an easy-to-use platform for one group*to find the other, and complete the task required.

#### *. Describe the network infrastructure the App may be based on.

#### *. Identify and describe the software to be used in your App.
The application will be built in Ruby on Rails, 
#### 6. Identify the database to be used in your App and provide a justification for your choice.
#### 7. Identify and describe the production database setup (i.e. postgres instance).
#### 8. Describe the architecture of your App.
#### 9. Explain the different high-level components (abstractions) in your App.
#### 10. Detail any third party services that your App will use.
#### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).
#### 12. Discuss the database relations to be implemented.
#### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
#### 14. Provide your database schema design.
#### 15. Provide User stories for your App.
#### 16. Provide Wireframes for your App.
#### 17. Describe the way tasks are allocated and tracked in your project.
#### 18. Discuss how Agile methodology is being implemented in your project.
#### 19. Provide an overview and description of your Source control process.
#### 20. Provide an overview and description of your Testing process.
#### 21. Discuss and analyse requirements related to information system security.
#### 22. Discuss methods you will use to protect information and data.
#### 23. Research what your legal obligations are in relation to handling user data.