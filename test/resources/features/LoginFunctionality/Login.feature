@regression
Feature: Testing the login positive and negative functionalities

  Scenario: Validating the successful login for OpenMrs
    Given User navigates to the OpenMrs website and provide credentials and location 'Inpatient Ward'
    Then User validates the title 'Home' and url 'https://demo.openmrs.org/openmrs/referenceapplication/home.page'

  Scenario Outline: Validating the negative login for OpenMrs
    Given User navigates to the OpenMrs website and provides credentials '<username>','<password>' and '<location>'
    Then User validates the error message 'Invalid username/password. Please try again.'
    Examples:
      | username | password | location          |
      | ahmet    | Admin123 | Isolation Ward    |
      | admin    | admin123 | Laboratory        |
      |          | Admin123 | Pharmacy          |
      | admin    |          | Registration Desk |


































