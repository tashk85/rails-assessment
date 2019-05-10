describe("Quote functionality", function() { 
//    it("Create a new quote", function() {
//         cy.visit("/dashboard")
//         //login as printer

//         cy.get("input[id='user_email'").click().type("jimmy@jones.com")
//         cy.get("input[id='user_password'").click().type("123123")
//         cy.get("input[value='Log in'").click()

//         cy.visit("/listings")
//         cy.contains("Show").click()
//         cy.contains("Create Quote").click()
//         cy.get("input[id='quote_total_price'").clear().type("10000")
//         cy.get("input[id='quote_job_size'").type("10000")
//         cy.get("input[id='quote_turnaround_time'").type("2019-10-10")
//         cy.get("input[value='Create Quote']").click()



                
//     });

    it("Accepting a quote", function() {
        cy.visit("/dashboard")
        //login as designer

        cy.get("input[id='user_email'").click().type("des@des.com")
        cy.get("input[id='user_password'").click().type("123123")
        cy.get("input[value='Log in'").click()

        cy.visit("/my_quotes")
        cy.contains("Show").click()
        cy.contains("Accept Quote").click({force:true})



                
    });

});