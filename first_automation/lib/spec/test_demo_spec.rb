# require 'rubygems'
# require 'watir-webdriver'
require 'rspec'

require_relative 'spec_helper'

describe 'first test' do
  before(:each) do
    visit PuppiesHomePage
  end

  it 'Adopt Puppy' do
    # visit PuppiesHomePage
      on (PuppiesHomePage) do |page|
      page.btnHannaViewDet
      sleep 1
      end

      on (DogPage) do |page|
      page.btnAdoptMe
      sleep 1
      end

      on (PricePage) do |page|
      page.btnCompleteAdoption
      sleep 1
      end

    on (CustomerDetailsPage) do |page|
      page.txtName = "Ihor Kolinyk"
      page.taAddress = "Lviv, Ukraine"
      page.txtEmail = "dfsdfhj@gmail.com"
      page.sltPayMethod = "Credit card"
      sleep 2
      page.btnPlaceOrder
      sleep 2
      expect(page.text.include?('Thank you for adopting a puppy!')).to be_truthy
    end

  end

  it 'Go to next' do
    visit PuppiesHomePage
    on (PuppiesHomePage) do |page|
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

  it 'puppies' do
    visit PuppiesHomePage
    on (PuppiesHomePage) do |page|
      page.btnBrookViewDet
      sleep 1
    end
    on (DogPage) do |page|
      page.btnReturn_to_List
      sleep 2
    end
    on (PuppiesHomePage) do |page|
      page.btnHannaViewDet
      sleep 1
    end
    on (DogPage) do |page|
      page.btnReturn_to_List
      sleep 2
    end
    on (PuppiesHomePage) do |page|
      page.btnMaggie_MaeViewDet
      sleep 1
    end
    on (DogPage) do |page|
      page.btnReturn_to_List
      sleep 1
    end
   end

  it 'Adopt  2 Puppies' do
    visit PuppiesHomePage
    on (PuppiesHomePage) do |page|
      page.btnMaggie_MaeViewDet
      sleep 1
    end
    on (DogPage) do |page|
      page.btnAdoptMe
      sleep 1
    end
    on (PricePage) do |page|
      page.btnAdopt_Another_Puppy
      sleep 2
    end
    on (PuppiesHomePage) do |page|
      page.btnHannaViewDet
      sleep 1
    end
    on (DogPage) do |page|
      page.btnAdoptMe
      sleep 1
    end
    on (PricePage) do |page|
      page.btnCompleteAdoption
      sleep 1
    end
    on (CustomerDetailsPage) do |page|
      page.txtName = "Ihor Kolinyk"
      page.taAddress = "Lviv, Ukraine"
      page.txtEmail = "dfsdfhj@gmail.com"
      page.sltPayMethod = "Credit card"
      sleep 2
      page.btnPlaceOrder
      sleep 2
      expect(page.text.include?('Thank you for adopting a puppy!')).to be_truthy
    end
  end

 end



