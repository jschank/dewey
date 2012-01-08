require "spec_helper"

describe OccurrencesHelper do

  context "Displaying Cover charge" do

    it "generates nothing when the cover charge is missing" do
      occurrence = FactoryGirl.build(:occurrence)
      helper.display_cover_charge(occurrence).should be_nil      
    end
    
    it "generates a the cover charge, in dollars, when it is present" do
      occurrence = FactoryGirl.build(:occurrence, :cover_charge => 9.99)
      helper.display_cover_charge(occurrence).should eq("<p class=\"cover\">$9.99</p>")      
    end

  end
    
end
