require "spec_helper"

describe EventsController do

  describe "GET Index" do
    it "gets the index view" do
      get :index
      response.status.should be 200
    end
    
    it "assigns all events to @events" do
      event = Factory(:event)
      get :index
      assigns(:events).should eq([event])
    end    
  end

  describe "GET show" do
    
    before(:each) do
      @event = Factory(:event)
      @occurrence = Factory(:occurrence, :event => @event)
      @o1 = Factory.create(:occurrence, :event_start => DateTime.civil(2010, 07, 03), :event_end => DateTime.civil(2010, 07, 04), :event => @event)
      @o2 = Factory.create(:occurrence, :event_start => DateTime.civil(2011, 07, 03), :event_end => DateTime.civil(2011, 07, 04), :event => @event)
      @o3 = Factory.create(:occurrence, :event_start => DateTime.civil(2011, 07, 10), :event_end => DateTime.civil(2011, 07, 11), :event => @event)
    end
    
    it "gets the show view" do
      get :show, :id => 1
      response.status.should be 200
    end
    
    it "assigns matching event to @event" do
      get :show, :id => 1
      assigns(:event).should eq(@event)
    end    

    it "assigns @future_occurrences" do
      get :show, :id => 1
      assigns(:future_occurrences).should eq([@occurrence, @o2, @o3])
    end    

    it "assigns @occurrence if an occurrence id is given" do
      get :show, :id => 1, :occurrence_id => 1
      assigns(:occurrence).should eq(@occurrence)
    end    
  end

  describe "GET upcoming" do
    
    before(:each) do
      @occurrence = Factory(:occurrence)      
      @p1 = Factory.create(:performance, :performance_start => DateTime.civil(2011, 07, 02, 20, 0), :performance_end => DateTime.civil(2011, 07, 04, 1, 0), :occurrence => @occurrence)
      @p2 = Factory.create(:performance, :performance_start => DateTime.civil(2011, 07, 03), :performance_end => DateTime.civil(2011, 07, 04), :occurrence => @occurrence)
      @p3 = Factory.create(:performance, :performance_start => DateTime.civil(2011, 07, 10), :performance_end => DateTime.civil(2011, 07, 11), :occurrence => @occurrence)
    end
    
    it "gets the upcoming view" do
      get :upcoming
      response.status.should be 200
    end
    
    it "assigns @future_occurrences" do
      get :upcoming
      assigns(:future_performances).should eq([@p1, @p2, @p3])
    end    

    it "assigns @happening_now" do
      get :upcoming
      assigns(:happening_now).should eq([@p1])
    end    
  end

end
