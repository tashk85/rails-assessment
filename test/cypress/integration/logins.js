
describe("Logins", function() {

    it("Login as a designer", function() {
        cy.contains("Login").click()
        cy.get("input[id='user_email'").click().type("des@des.com")
        cy.get("input[id='user_password'").click().type("123123")
        cy.get("input[value='Log in'").click()
    });

    it("Login as a printer", function() {
        cy.contains("Login").click()
        cy.get("input[id='user_email'").click().type("jimmy@jones.com")
        cy.get("input[id='user_password'").click().type("123123")
        cy.get("input[value='Log in'").click()
    });

}); 
