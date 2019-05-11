describe("Landing page functionality", function() {
    it("View elements on the page", function() {
        cy.visit("/")
        // #click all links on the page

        cy.contains("Sign Up As A Printer").click()
        cy.visit("/")
        cy.contains("Sign Up As A Designer").click()
        cy.visit("/")
        cy.contains("How It Works").click()
        cy.contains("Login").click()









        


    });

    



       



}); 