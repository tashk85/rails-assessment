describe("Landing page functionality", function() {
    it("View elements on the page", function() {
        cy.visit("/")

        


    });

    it("Sign up as a printer", function() {
        cy.visit("/")
        cy.contains("Sign Up As A Printer").click()

        cy.get("input[id='user_first_name'").click().type("Jimmy")
        cy.get("input[id='user_last_name'").click().type("Jones")
        cy.get("input[id='user_phone'").click().type("12345678")
        cy.get("input[id='user_postcode'").click().type("2010")
        cy.get("input[id='user_email'").click().type("jimmy@jones.com")
        cy.get("input[id='user_password'").click().type("123123")
        cy.get("input[id='user_password_confirmation'").click().type("123123")
        cy.get("input[value='Sign up']").click()

    if (cy.url().should('include', '/printer_info')) {
        cy.get("input[id='printer_abn'").click().type("12345")
        cy.get("input[id='printer_printer_model'").click().type("12345")
        cy.get("input[value='Submit printer information'").click()
    } 
    });

    it("Sign up as a designer", function() {
        cy.visit("/")
        cy.contains("Sign Up As A Designer").click()

        cy.get("input[id='user_first_name'").click().type("Jimmy")
        cy.get("input[id='user_last_name'").click().type("Jones")
        cy.get("input[id='user_phone'").click().type("12345678")
        cy.get("input[id='user_postcode'").click().type("2010")
        cy.get("input[id='user_email'").click().type("des@des.com")
        cy.get("input[id='user_password'").click().type("123123")
        cy.get("input[id='user_password_confirmation'").click().type("123123")
        cy.get("input[value='Sign up']").click()
    });

    



       



}); 