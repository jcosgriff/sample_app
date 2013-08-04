require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    before { visit root_path}
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
	     page.should have_content('Sample App')
    end

    it "should have the right title" do
    	page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
    end

  end

  describe "Help Page" do
  	it "should have the content 'help'" do
  		visit help_path
  		page.should have_content('Help')
  	end

  	it "should have the right title" do
    	visit help_path
    	page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end

  end

  describe "About Page" do

    it "should have the right title" do
    	visit about_path
    	page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About")
    end

  	it "should have content 'About Us'" do
  		visit about_path
  		page.should have_content('About Us')
  	end
  end

  describe "Contact Page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end 

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end



end
