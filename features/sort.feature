Feature: Sort
  In order to easily find the category or product I am looking for
  As a user
  I want to sort categories and products
  
  Scenario: sort categories
    Given a category "Kaffees" with the description "HH"
      And a category "Tees" with the description "GG"
      And a category "Biere" with the description "FF"
      And a category "Weine" with the description "EE"
      And a category "Cognacs" with the description "DD"
      And a category "Portweine" with the description "CC"
      And a category "Grappas" with the description "BB"
      And a category "Sherries" with the description "AA"
      And I am logged in
    When I go to the start page
      And I follow "Categories"
    Then I should see "Kaffees" before "Biere"
      And I should see "Weine" before "Cognacs"
      But I should not see "Portweine"
    When I follow "Name"
    Then I should see "Biere" before "Kaffees"
      And I should see "Grappas" before "Kaffees"
      But I should not see "Sherries"
      And I should not see "Tees"
      And I should not see "Weine"
    When I follow "Description"
    Then I should see "Sherries" before "Grappas"
      And I should see "Portweine" before "Cognacs"
      But I should not see "Biere"
      And I should not see "Tees"
      And I should not see "Kaffees"

  Scenario: sort products
    Given a category "Biere" with the description "Getraenke"
      And a product "Becks" with the description "Deutschland" and the price "2.00€" that is valid to "12/20/2012" and belongs to the category "Biere"
      And a product "Anchor Steam Beer" with the description "U.S.A." and the price "2.00€" that is valid to "12/20/2012" and belongs to the category "Biere"
      And a product "Baltika Klassitscheskoye" with the description "Russland" and the price "2.00€" that is valid to "12/20/2012" and belongs to the category "Biere"
      And a product "Belhaven St. Andrews Ale" with the description "Großbritannien" and the price "2.00€" that is valid to "12/20/2012" and belongs to the category "Biere"
      And a product "Olvi" with the description "Finnland" and the price "2.00€" that is valid to "12/20/2012" and belongs to the category "Biere"
      And a product "Bud Super Strong" with the description "Tschechien" and the price "2.00€" that is valid to "12/20/2012" and belongs to the category "Biere"
      And I am logged in
    When I go to the start page
      And I follow "Products"
      And I follow "Name"
    Then I should see "Anchor Steam Beer" before "Baltika Klassitscheskoye"
      And I should not see "Olvi"
    When I follow "Description"
    Then I should see "Becks" before "Baltika Klassitscheskoye"
      And I should not see "Anchor Steam Beer"

  # Scenario: sort products by category
  # Scenario: sort products by price
  # Scenario: sort products by valid to
  # Scenario: sort categories offline
  # Scenario: sort products offline