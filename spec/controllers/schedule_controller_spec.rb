require 'spec_helper'

describe ScheduleController do

  describe "GET 'upcoming'" do
    it "returns http success" do
      get 'upcoming'
      response.should be_success
    end
  end

end
