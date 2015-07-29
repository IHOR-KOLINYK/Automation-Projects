class AdoptPuppyPage

  include PageObject

  page_url 'http://puppies.herokuapp.com/'

  button(:btnBrookViewDet,:xpath=>"//h3[text()='Brook']/../..//input")
  button(:btnHannaViewDet,:xpath=>"//h3[text()='Hanna']/../..//input")
  button(:btnMaggie_MaeViewDet,:xpath=>"//h3[text()='Maggie Mae']/../..//input")
  link(:btnNext,:xpath=>"//div[@class='pagination']//a[@class='next_page']")
  link(:btnPrevious,:xpath=>"//div[@class='pagination']//a[@class='previous_page']")



  # dog page
  button(:btnAdoptMe,:xpath=>"//div//input[@value='Adopt Me!']")
  link(:btnReturn_to_List,:xpath=>"//a[text()='Return to List']")


  # buy options page
  checkbox(:chbCollar,:xpath=>"(//input[@id='collar'])[1]")
  checkbox(:chbChew_Toy,:xpath=>"(//input[@id='toy'])[1]")
  checkbox(:chbFirst_Vet_Visit,:xpath=>"(//input[@id='vet'])[1]")
  button(:btnCompleteAdoption,:xpath=>"//input[@value='Complete the Adoption']")
  button(:btnAdopt_Another_Puppy,:xpath=>"//input[@value='Adopt Another Puppy']")


  # customer details page
  text_field(:txtName,:xpath=>"//input[@id='order_name']")
  text_area(:taAddress,:xpath=>"//textarea[@id='order_address']")
  text_field(:txtEmail,:xpath=>"//input[@id='order_email']")
  select_list(:sltPayMethod, :xpath => "//select[@id='order_pay_type']")
  button(:btnPlaceOrder,:xpath=>"//input[@value='Place Order']")


  def customer_details(vName,vAddress,vEmail,vPayMethod)
    self.txtName = vName
    self.taAddress = vAddress
    self.txtEmail = vEmail
    self.sltPayMethod = vPayMethod
  end

  # def customer_details_2()
  #   self.txtName = "Steven"
  #   self.taAddress = "Donetsk, Ukraine"
  #   self.txtEmail = "xxxxxxxx@gmail.com"
  #   self.sltPayMethod = "Purchase order"
  # end


def puppy_name(vname)

  self.button_element(:xpath=>"//h3[text()='#{vname}']/../..//input").click

end


  def puppy_choice(vnumber)
    case vnumber

     when 'adopt one'
         # visit PuppiesHomePage
          self.puppy_name('Maggie Mae')
          # page.btnHannaViewDet
          sleep 1

          self.btnAdoptMe
          sleep 1

          self.btnCompleteAdoption
          sleep 1

          # page.txtName = "Ihor Kolinyk"
          # page.taAddress = "Lviv, Ukraine"
          # page.txtEmail = "dfsdfhj@gmail.com"
          # page.sltPayMethod = "Credit card"
          self.customer_details("Ihor", "Donetsk, Ukraine", "sfsds@gmail.com", "Check")
          sleep 2

          self.btnPlaceOrder
          sleep 2



    when 'adopt two'
        # visit PuppiesHomePage
         self.puppy_name('Hanna')
          sleep 1

          self.btnAdoptMe
          sleep 1

         self.btnAdopt_Another_Puppy
          sleep 2

         self.puppy_name('Brook')
          sleep 1

         self.btnAdoptMe
          sleep 1

         self.btnCompleteAdoption
          sleep 1

         self.customer_details("Ihor", "Donetsk, Ukraine", "ssss@gmail.com", "Credit card")
          # page.txtName = "Ihor Kolinyk"
          # page.taAddress = "Lviv, Ukraine"
          # page.txtEmail = "dfsdfhj@gmail.com"
          # page.sltPayMethod = "Credit card"
          sleep 2
          self.btnPlaceOrder
          sleep 2
        end
      end

end



