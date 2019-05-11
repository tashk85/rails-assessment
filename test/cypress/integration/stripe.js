describe("Accepting and paying for quotes", function() { 


    it("Accepts a quote", function() {
        cy.visit("/dashboard")
        //login as designer

        cy.get("input[id='user_email'").click().type("des@des.com")
        cy.get("input[id='user_password'").click().type("123123")
        cy.get("input[value='Log in'").click()

        cy.visit("/my_quotes")
        cy.contains("View Quote").click()
        cy.contains("Accept Quote").click({force:true})
        // cy.get('[data-test="button-FormStripeCart-PayWithCreditCard"]').click()
        // cy.get("input[id='cardNumber']").type("4242424242424242")
        // .click().type("4242424242424242")
        // cy.get("input[id='cardExpire'").click().type("1234")
        // cy.get("input[id='cardCVC'").click().type("1234")
        // cy.get("input[id='billingName'").click().type("Jimmy")

        // User manually enters payments for now



        //   it(`works when you submit name, email and card number`, () => {
        //     cy.get('iframe[name^="__privateStripeFrame"]').then($iframe => {
        //       const $body = $iframe.contents().find('body')
        //       cy.wrap($body)
        //         .find('input[name="cardnumber"]')
        //         .type('4242')
        //         .type('4242')
        //         .type('4242')
        //         .type('4242')
        
        //       cy.wrap($body)
        //         .find('input:eq(2)')
        //         .type('1222')
        //       cy.wrap($body)
        //         .find('input:eq(3)')
        //         .type('223')
        //       cy.wrap($body)
        //         .find('input:eq(4)')
        //         .type('424242')
        //     })
        
        //     cy.get('.dollar-amount').type('1')
        
        //     cy.get('form')
        //       .submit()
        //       .should('contain', 'payment submitted')
        
        //     cy.get('.container').should('contain', '1000 credits')
        //   })
        
    });

});