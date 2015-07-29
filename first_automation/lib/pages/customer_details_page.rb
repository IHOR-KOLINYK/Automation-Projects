class CustomerDetailsPage
  include PageObject

  page_url 'http://puppies.herokuapp.com/orders/new'

  text_field(:txtName,:xpath=>"//input[@id='order_name']")
  text_area(:taAddress,:xpath=>"//textarea[@id='order_address']")
  text_field(:txtEmail,:xpath=>"//input[@id='order_email']")
  select_list(:sltPayMethod, :xpath => "//select[@id='order_pay_type']")
  button(:btnPlaceOrder,:xpath=>"//input[@value='Place Order']")


 def customer_details_1()
   self.txtName = "Demon"
   self.taAddress = "Ternopil, Ukraine"
   self.txtEmail = "ssss@gmail.com"
   self.sltPayMethod = "Check"
 end

 def customer_details_2()
   self.txtName = "Steven"
   self.taAddress = "Donetsk, Ukraine"
   self.txtEmail = "xxxxxxxx@gmail.com"
   self.sltPayMethod = "Purchase order"
 end


end