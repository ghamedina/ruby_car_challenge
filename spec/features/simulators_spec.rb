require 'rails_helper'

RSpec.feature "Simulators", type: :feature do
  # Given that I am on the landing page, then I can create a car based on make and model year of the car to be simulated.
  context 'Creating a car for the app' do
    Steps 'Creating a car for the app' do
      Given 'I am on the landing page' do
        visit '/simulator'
      end
      When 'fill out form for a car' do
        fill_in 'make', with: 'Toyota'
        fill_in 'model_year', with: '2006'
      end
      #Given that I have entered the make and model year, when I click on a button labelled Simulate Car, then I am taken to a status page showing make, model year and initial speed of the car.
      And 'click submit button' do
        click_button 'Simulate Car'
      end
      Then 'I can see car info on another page' do
        expect(page).to have_content('Toyota')
        expect(page).to have_content('2006')
        expect(page).to have_content('0 km/hr')
        #Given that I have entered the make and model year, when clicking on a button labelled Simulate Car, then I am taken to a status page that shows whether the lights on the car are on or off. They start off.
        expect(page).to have_content('On')
      end
      #Given that I have created a car, when I click an accelerate button, then I make it speed up in 10Km/h increments.
      And 'click accelerate button' do
        click_button 'accelerate'
      end
      Then 'I can accelerate car by 10 km/hr' do
        expect(page).to have_content('10 km/hr')
      end
      #Given that I have created a car, when I click the brake button, then the car slows down by 7Km/h.
      And 'click brake button' do
        click_button 'brake'
      end
      Then 'I can brake car by 7km/hr' do
        expect(page).to have_content('3 km/hr')
      end
      And 'click brake button' do
        click_button 'brake'
      end
      Then 'I can not surpass 0km /hr' do
        expect(page).to have_content('0 km/hr')
      end
      And 'click light switch' do
        click_button 'Light Switch'
      end
      Then 'I can turn off our lights' do
        expect(page).to have_content('Off')
      end
      #Given that I have created a car, when I visit the car status page, then I can set and release the parking brake using radio buttons.
      And 'I can click on parking brake on' do
        choose 'On'
      end
      Then 'I can turn on the parking brake' do
        expect(page).to have_selector("input", :value =>"On")
      end
    end
  end
end
