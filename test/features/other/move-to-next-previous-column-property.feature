Feature: Move to Next / Previous Column Properties Panel
  As a Data Packager  
  I want to move sequentially through each column property panel  
  So that I can efficiently set all the column properties  

  RULES
  =====

  - "Next Column" and "Previous Column" are invoked using a button in the Column Properties panel
  - Hide button RULES:
    - If the cursor is in the first column, the previous button should be hidden
    - If the cursor is in the last column, the next button should be hidden
    - Do not show next or previous button in Table, Provenance or Data Package panels

  Scenario: Move to the next Column Properties panel
    Given Column Properties is open
    When "Next Column" is invoked
    Then the next column properties panel should be displayed
    And the stored properties for that column should be displayed

  Scenario: Move to the previous Column Properties panel
    Given Column Properties is open
    When "Previous" is invoked
    Then the previous column properties panel should be displayed
    And the stored properties for that column should be displayed
