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
end
