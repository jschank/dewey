require "spec_helper"

describe WeblocationsController do
  describe "routing" do

    it "routes to #index" do
      get("/weblocations").should route_to("weblocations#index")
    end

    it "routes to #new" do
      get("/weblocations/new").should route_to("weblocations#new")
    end

    it "routes to #show" do
      get("/weblocations/1").should route_to("weblocations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/weblocations/1/edit").should route_to("weblocations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/weblocations").should route_to("weblocations#create")
    end

    it "routes to #update" do
      put("/weblocations/1").should route_to("weblocations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/weblocations/1").should route_to("weblocations#destroy", :id => "1")
    end

  end
end
