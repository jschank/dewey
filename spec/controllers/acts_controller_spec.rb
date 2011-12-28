require "spec_helper"

describe ActsController do

  describe "GET Index" do
    it "gets the index view" do
      get :index
      response.status.should be 200
    end
    
    it "assigns all acts to @acts" do
      act = Factory(:act)
      get :index
      assigns(:acts).should eq([act])
    end    
  end

  describe "GET show" do
    it "gets the show view" do
      act = Factory(:act)
      get :show, :id => 1
      response.status.should be 200
    end
    
    it "assigns matching act to @act, and sets @future_occurrences" do
      act = Factory(:act)      
      o1 = Factory.create(:occurrence, :event_start => DateTime.civil(2010, 07, 03), :event_end => DateTime.civil(2010, 07, 04))
      p1 = Factory.create(:performance,:performance_start => DateTime.civil(2010, 07, 03), :performance_end => DateTime.civil(2010, 07, 04), :occurrence => o1, :act => act )
      o2 = Factory.create(:occurrence, :event_start => DateTime.civil(2011, 07, 03), :event_end => DateTime.civil(2011, 07, 04))
      p2 = Factory.create(:performance, :performance_start => DateTime.civil(2011, 07, 03), :performance_end => DateTime.civil(2011, 07, 04), :occurrence => o2, :act => act )
      o3 = Factory.create(:occurrence, :event_start => DateTime.civil(2011, 07, 10), :event_end => DateTime.civil(2011, 07, 11))
      p3 = Factory.create(:performance, :performance_start => DateTime.civil(2011, 07, 10), :performance_end => DateTime.civil(2011, 07, 11), :occurrence => o3, :act => act )
      get :show, :id => 1
      assigns(:act).should eq(act)
      assigns(:future_occurrences).should eq([o2, o3])
    end    
  end

end
