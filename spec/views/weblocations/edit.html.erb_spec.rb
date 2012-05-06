require 'spec_helper'

describe "weblocations/edit" do
  before(:each) do
    @weblocation = assign(:weblocation, stub_model(Weblocation))
  end

  it "renders the edit weblocation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weblocations_path(@weblocation), :method => "post" do
    end
  end
end
