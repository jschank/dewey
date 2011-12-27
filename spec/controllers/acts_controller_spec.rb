require "spec_helper"

describe ActsController do

  describe "GET Index" do
    it "gets the index view" do
      get "index"
      response.status.should be 200
    end
    
    it "assigns all acts to @acts" do
      act = stub_model(Act)
      Act.stub(:all) { [act] }
      get :index
      assigns(:acts).should eq([act])
    end
    
  end

end
