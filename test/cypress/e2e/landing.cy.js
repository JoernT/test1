/* global cy */
describe('The landing page', function () {
  it('should load ', function () {
    cy.visit('/exist/apps/test1/index.html')
      .get('.alert')
      .contains('app.xqm')
  })

})
