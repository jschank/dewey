require "spec_helper"

describe VenuesController do

  describe "GET Index" do
    it "gets the index view" do
      get :index
      response.status.should be 200
    end
    
    it "assigns all venues to @venues" do
      venue = Factory(:venue, :id =>5)
      get :index
      assigns(:venues).should eq([venue])
    end    
  end

  describe "GET show" do
    it "gets the show view" do
      venue = Factory(:venue, :id => 1)
      get :show, :id => 1
      response.status.should be 200
    end
    
    it "assigns matching venue to @venue, and sets @future_occurrences" do
      venue = Factory(:venue, :id => 2)
      l1 = Factory.create(:location, :venue => venue)
      l2 = Factory.create(:location, :venue => Factory.create(:venue))      
      o1 = Factory.create(:occurrence, :event_start => DateTime.civil(2010, 07, 03), :event_end => DateTime.civil(2010, 07, 04))
      p1 = Factory.create(:performance,:performance_start => DateTime.civil(2010, 07, 03), :performance_end => DateTime.civil(2010, 07, 04), :occurrence => o1, :location => l1 )
      o2 = Factory.create(:occurrence, :event_start => DateTime.civil(2011, 07, 03), :event_end => DateTime.civil(2011, 07, 04))
      p2 = Factory.create(:performance, :performance_start => DateTime.civil(2011, 07, 03), :performance_end => DateTime.civil(2011, 07, 04), :occurrence => o2, :location => l1 )
      o3 = Factory.create(:occurrence, :event_start => DateTime.civil(2011, 07, 10), :event_end => DateTime.civil(2011, 07, 11))
      p3 = Factory.create(:performance, :performance_start => DateTime.civil(2011, 07, 10), :performance_end => DateTime.civil(2011, 07, 11), :occurrence => o3, :location => l2 )
      get :show, :id => 2
      assigns(:venue).should eq(venue)
      assigns(:future_occurrences).should eq([o2])
    end    
  end

end
