require 'rails_helper'


RSpec.feature "LandingPages", type: :feature do
  # Given that I am on the car simulator landing page, then I see Welcome to the Car Simulator
  context 'Going to the website' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        visit '/simulator'
      end
      Then 'I can see a welcome message' do
        expect(page).to have_content("Welcome to the Car Simulator")
      end
    end
  end




end#Rsepc
