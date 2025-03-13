Feature: Herokuapp

Background:
Given url 'https://restful-booker.herokuapp.com'
* configure ssl = true
* def req = read('classpath:resources/Json/example.json')
* def createBooking1 = req.createBooking
* def authToken = req.Auth
* def partial = req.patch
* configure ssl = true
* configure headers = { 'accept': 'application/json', 'Content-Type': 'application/json'}

  # Auth Token almak için gerekli Kod aynı zamanda Auth ksımının testi
  Given path 'auth'
  And request authToken
  When method POST
  Then status 200
  And def auth = response.token

 # * configure headers = { 'Cookie: auth'}

  @Booking
Scenario: Get Bookings Ids
  And path '/booking'
  When method Get
  Then status 200

Scenario: Get Booking
    Given path 'booking/7544'
    When method get
    Then status 200
    And match response == {firstname: '#notnull', lastname: '#notnull'}


  Scenario: Create Booking
  Given path 'booking'
  And request auth
  And request createBooking1
  When method POST
  Then status 200
  And match response.booking.firstname == "John"
  And match response.booking.lastname == "Doe"
  And match response.booking.totalprice == 111
  And match response.booking.depositpaid == true


  Scenario: Update Booking
    Given path 'booking/7290'
    And header token = auth
    And request createBooking1
    When method put
    Then status 200



Scenario: Partial Update Booking
  And header token = auth
  And path '/booking/7287'
  And request partial
  When method Patch
  Then status 200


Scenario: Delete Booking
  And header Cookie = auth
  And path '/booking/id'
  When method Delete
  Then status 200


@Ping
Scenario: Health Check
  And path '/ping'
  When method Get
  Then status 201
