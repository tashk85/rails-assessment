describe("Landing page functionality", function() {
    it("View elements on the page", function() {
        cy.visit("/")
        cy.contains("Sign Up")
        

    });
});