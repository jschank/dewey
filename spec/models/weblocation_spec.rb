require 'spec_helper'

describe Weblocation do
  
  before(:each) do
    @valid_attributes = FactoryGirl.attributes_for(:weblocation)
  end
  
  it "should be invalid without a name" do
    weblocation = Weblocation.create(@valid_attributes.except(:name))
    weblocation.should_not be_valid
    weblocation.errors[:name].should eq(["can't be blank"])
    weblocation.name = 'facebook'
    weblocation.should be_valid    
  end
  
  it "should be invalid without a tagline" do
    weblocation = Weblocation.create(@valid_attributes.except(:tagline))
    weblocation.should_not be_valid
    weblocation.errors[:tagline].should eq(["can't be blank"])
    weblocation.tagline = 'join us on'
    weblocation.should be_valid    
  end
  
  it "should be invalid without an icon" do
    weblocation = Weblocation.create(@valid_attributes.except(:icon))
    weblocation.should_not be_valid
    weblocation.errors[:icon].should eq(["can't be blank"])
    weblocation.icon = 'facebook-icon.png'
    weblocation.should be_valid    
  end

end
