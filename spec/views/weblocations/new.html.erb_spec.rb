require 'spec_helper'

describe "weblocations/new" do
  before(:each) do
    assign(:weblocation, stub_model(Weblocation).as_new_record)
  end

  it "renders new weblocation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => weblocations_path, :method => "post" do
    end
  end
end
