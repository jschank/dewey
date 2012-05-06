require 'spec_helper'

describe "weblocations/show" do
  before(:each) do
    @weblocation = assign(:weblocation, stub_model(Weblocation))
  end

  it "renders attributes in <p>" do
    render
  end
end
