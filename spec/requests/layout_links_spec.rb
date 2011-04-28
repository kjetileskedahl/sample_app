require 'spec_helper'

describe "LayoutLinks" do

    it "Should have a home page at '/'" do
        get '/'
        response.should have_selector('title', :content => "Home")
    end 

    it "Should have a contact page at '/contact'" do
        get '/contact'
        response.should have_selector('title', :content => "Contact")
    end 

    it "Should have a about page at '/about'" do
        get '/about'
        response.should have_selector('title', :content => "About")
    end 

    it "Should have a home page at '/help'" do
        get '/help'
        response.should have_selector('title', :content => "Help")
    end 

    it "Should have a sign up page at '/signup'" do
        get '/signup'
        response.should have_selector('title', :content => "Sign up")
    end 

end
