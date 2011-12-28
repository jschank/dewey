require "spec_helper"

describe "routing" do

  context "root" do
    
    it "routes / to events#upcoming" do
      { :get => "/" }.should route_to( :controller => "events", :action => "upcoming")
    end
    
  end

  context "acts" do

    it "routes /acts to acts#index" do
      { :get => "/acts" }.should route_to( :controller => "acts", :action => "index")
    end

    it "routes /acts/1 to act#show" do
      { :get => "/acts/1" }.should route_to( :controller => "acts", :action => "show", :id => "1")
    end

  end

  context "venues" do

    it "routes /venues to venues#index" do
      { :get => "/venues" }.should route_to( :controller => "venues", :action => "index")
    end

    it "routes /venues/1 to venues#show" do
      { :get => "/venues/1" }.should route_to( :controller => "venues", :action => "show", :id => "1")
    end

  end

  context "events" do

    it "routes /events to events#index" do
      { :get => "/events" }.should route_to( :controller => "events", :action => "index")
    end

    it "routes /events/1 to events#show" do
      { :get => "/events/1" }.should route_to( :controller => "events", :action => "show", :id => "1")
    end

    it "routes /events/1/2 to events#show" do
      { :get => "/events/1/2" }.should route_to( :controller => "events", :action => "show", :id => "1", :occurrence_id => "2")
    end

  end
  
  context "unroutable" do
    
    it "does not expose a list of occurrences" do
      { :get => "/occurrences" }.should_not be_routable
    end

    it "does not expose a list of performances" do
      { :get => "/performances" }.should_not be_routable
    end

    it "does not expose a list of locations" do
      { :get => "/locations" }.should_not be_routable
    end
    
  end

end
