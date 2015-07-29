class DogPage
  include PageObject

  page_url 'http://puppies.herokuapp.com/puppies/3'

  button(:btnAdoptMe,:xpath=>"//div//input[@value='Adopt Me!']")
  link(:btnReturn_to_List,:xpath=>"//a[text()='Return to List']")

end