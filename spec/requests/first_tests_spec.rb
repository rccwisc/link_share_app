require 'spec_helper'

describe "FirstTests" do
   describe "Links page" do

    it "should have the content 'Listing links'" do
        visit '/links'
        page.should have_content('Listing links')
    end
  end
  
  describe "New link" do

      it "should have the content 'New link'" do
          visit '/links/new'
          page.should have_content('New link')
    end
  end
  
  describe "Validations"  do
      
    it "should have valid http address" do
        Link.new(:name => "some", :url => 'hppt://foo.com', :saved => "02/02/2012").should_not be_valid
    end
    
    it "should not have nil/blank name" do
        Link.new(:name => "", :url => 'http://www.foo.com', :saved => "02/02/2012").should_not be_valid
    end
    
    it "should be valid" do
        Link.new(:name => "some name", :url => 'http://www.foo.com', :saved => "02/02/2012").should be_valid
    end
  end
end
