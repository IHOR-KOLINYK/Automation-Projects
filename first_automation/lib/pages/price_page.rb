
class PricePage

  include PageObject

  page_url 'http://puppies.herokuapp.com/carts/6214'

  checkbox(:chbCollar,:xpath=>"(//input[@id='collar'])[1]")
  checkbox(:chbChew_Toy,:xpath=>"(//input[@id='toy'])[1]")
  checkbox(:chbFirst_Vet_Visit,:xpath=>"(//input[@id='vet'])[1]")
  button(:btnCompleteAdoption,:xpath=>"//input[@value='Complete the Adoption']")
  button(:btnAdopt_Another_Puppy,:xpath=>"//input[@value='Adopt Another Puppy']")

end