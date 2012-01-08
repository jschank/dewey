require "spec_helper"

describe ActsHelper do

  context "Displaying" do

    it "generates nothing when the hometown is missing" do
      act = FactoryGirl.build(:act)
      helper.display_hometown(act).should be_nil      
    end
    
    it "generates a the hometown when it is present" do
      act = FactoryGirl.build(:act, :hometown => "Bikini Bottom")
      helper.display_hometown(act).should eq("<p class=\"hometown\">Bikini Bottom</p>")      
    end

  end
    
end
