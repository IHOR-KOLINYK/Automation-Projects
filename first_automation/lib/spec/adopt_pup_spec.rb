require_relative 'spec_helper'

describe 'first test' do
  before(:each) do
    visit AdoptPuppyPage
  end



  it 'Go to next' do
    on (AdoptPuppyPage) do |page|
      page.btnNext
      sleep 1
      page.btnNext
      sleep 1
      page.btnPrevious
      sleep 1
      page.btnPrevious
      sleep 1
      expect(@browser.url).to eq("http://puppies.herokuapp.com/agency/index?page=1")
    end
  end



   it 'Adopt Puppy' do

      # visit PuppiesHomePage
       on(AdoptPuppyPage) do |page|
        page.puppy_choice('adopt two')

        expect(page.text.include?('Thank you for adopting a puppy!')).to be_truthy
      #   page.puppy_name('Maggie Mae')
      #   # page.btnHannaViewDet
      #   sleep 1
      # end
      # on(DogPage) do |page|
      #   page.btnAdoptMe
      #   sleep 1
      # end
      # on(PricePage) do |page|
      #   page.btnCompleteAdoption
      #   sleep 1
      # end
      # on(CustomerDetailsPage) do |page|
      #   # page.txtName = "Ihor Kolinyk"
      #   # page.taAddress = "Lviv, Ukraine"
      #   # page.txtEmail = "dfsdfhj@gmail.com"
      #   # page.sltPayMethod = "Credit card"
      # page.customer_details("Demon","Ternopil, Ukraine","ssss@gmail.com","Check")
      #   sleep 2
      #   page.btnPlaceOrder
      #   sleep 2
      #   expect(page.text.include?('Thank you for adopting a puppy!')).to be_truthy
      end
   end




  it 'puppies' do
    # visit PuppiesHomePage
    on (AdoptPuppyPage) do |page|
      page.btnBrookViewDet
      sleep 1

      page.btnReturn_to_List
      sleep 2

      page.btnHannaViewDet
      sleep 1

      page.btnReturn_to_List
      sleep 2

      page.btnMaggie_MaeViewDet
      sleep 1

      page.btnReturn_to_List
      sleep 1
    end
 end



  it 'Adopt  2 Puppies' do
    # visit PuppiesHomePage
    on (AdoptPuppyPage) do |page|
      page.btnMaggie_MaeViewDet
      sleep 1

      page.btnAdoptMe
      sleep 1

      page.btnAdopt_Another_Puppy
      sleep 2

      page.btnHannaViewDet
      sleep 1

      page.btnAdoptMe
      sleep 1

      page.btnCompleteAdoption
      sleep 1

      page.customer_details("Ihor","Kiev, Ukraine","ssss@gmail.com","Check")

      # page.txtName = "Ihor Kolinyk"
      # page.taAddress = "Lviv, Ukraine"
      # page.txtEmail = "dfsdfhj@gmail.com"
      # page.sltPayMethod = "Credit card"
      sleep 2

      page.btnPlaceOrder
      sleep 2

      expect(page.text.include?('Thank you for adopting a puppy!')).to be_truthy
    end
  end


  it 'CHECKBOX TEST' do
    # visit PuppiesHomePage
    on (AdoptPuppyPage) do |page|
      page.btnHannaViewDet
      sleep 1

      page.btnAdoptMe
      sleep 1

      page.check_chbCollar
      sleep 1
      # page.uncheck_chbCollar
      page.check_chbChew_Toy
      sleep 1

      page.check_chbFirst_Vet_Visit
      expect(page.chbCollar_checked?).to be_truthy
      sleep 2

      page.btnCompleteAdoption
      sleep 1
    end
  end
end










