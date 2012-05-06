require 'spec_helper'

describe "weblocations/index" do
  before(:each) do
    assign(:weblocations, [
      stub_model(Weblocation),
      stub_model(Weblocation)
    ])
  end

  it "renders a list of weblocations" do
    render
  end
end
