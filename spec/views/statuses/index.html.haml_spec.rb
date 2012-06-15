require 'spec_helper'

describe "statuses/index" do
  before(:each) do
    assign(:statuses, [
      stub_model(Status,
        :main => "Main",
        :secondary => "Secondary"
      ),
      stub_model(Status,
        :main => "Main",
        :secondary => "Secondary"
      )
    ])
  end

  it "renders a list of statuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Main".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary".to_s, :count => 2
  end
end
