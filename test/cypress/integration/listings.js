describe("Listings functionality", function() {

it("Create a new listing", function() {
        cy.visit("/dashboard")
        //login as designer

        cy.get("input[id='user_email'").click().type("des@des.com")
        cy.get("input[id='user_password'").click().type("123123")
        cy.get("input[value='Log in'").click()


        cy.contains("Create New Listing").click()
        cy.get("input[id='listing_description'").click().type("A sweet thang")
        cy.get("input[id='listing_budget'").click().type("400")
        cy.get("input[id='listing_due_date'").click().type("2019-10-10")
        cy.get("input[accept='image/png,image/gif,image/jpeg,image/jpg']").click()

        const fileName = 'ocean.jpg';
 
            cy.fixture(fileName).then(fileContent => {
            cy.get("input[id='listing_design_file']").upload(
                { fileContent, fileName, mimeType: 'application/jpg' },
                { subjectType: 'input' });
            });

        cy.get("input[value='Create Listing']").click()

                
        });

});