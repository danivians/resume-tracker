require 'spec_helper'

describe "candidates/new" do
  before(:each) do
    assign(:candidate, stub_model(Candidate,
      :name => "MyString",
      :comments => "MyText",
      :user => nil,
      :source => nil,
      :status => nil
    ).as_new_record)
  end

  it "renders new candidate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => candidates_path, :method => "post" do
      assert_select "input#candidate_name", :name => "candidate[name]"
      assert_select "textarea#candidate_comments", :name => "candidate[comments]"
      assert_select "input#candidate_user", :name => "candidate[user]"
      assert_select "input#candidate_source", :name => "candidate[source]"
      assert_select "input#candidate_status", :name => "candidate[status]"
    end
  end
end
