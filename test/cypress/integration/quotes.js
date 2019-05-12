describe("Quote functionality", function() { 
//    it("Create a new quote", function() {
//         cy.visit("/dashboard")
//         //login as printer

//         cy.get("input[id='user_email'").click().type("jimmy@jones.com")
//         cy.get("input[id='user_password'").click().type("123123")
//         cy.get("input[value='Log in'").click()

//         cy.visit("/listings")
//         cy.get(".row.card").contains("View Listing").click()
//         cy.contains("Create Quote").click()
//         cy.get("input[id='quote_total_price'").clear().type("10000")
//         cy.get("input[id='quote_job_size'").type("10000")
//         cy.get("input[id='quote_turnaround_time'").type("2019-10-10")
//         cy.get("input[value='Create Quote']").click({force:true})

//     }); 

    

    it("View existing quote", function() {
        cy.visit("/dashboard")
        //login as printer

        cy.get("input[id='user_email'").click().type("jimmy@jones.com")
        cy.get("input[id='user_password'").click().type("123123")
        cy.get("input[value='Log in'").click()

        cy.visit("/listings")
        cy.get(".row.card").contains("View Listing").click()
        cy.contains("View Quotes").click()
        cy.contains("Show").click()

        

    }); 

    it("Edit existing quote", function() {
        cy.visit("/dashboard")
        //login as printer

        cy.get("input[id='user_email'").click().type("jimmy@jones.com")
        cy.get("input[id='user_password'").click().type("123123")
        cy.get("input[value='Log in'").click()

        cy.visit("/listings")
        cy.get(".row.card").contains("View Listing").click()
        cy.contains("View Quotes").click()
        cy.contains("Show").click()
        cy.contains("Edit").click()
        cy.get("input[id='quote_total_price'").clear().type("1000")
        cy.get("input[id='quote_job_size'").clear().type("1000")
        cy.get("input[id='quote_turnaround_time'").type("2019-10-11")
        cy.get("input[value='Update Quote']").click({force:true}) 


        

    }); 

});