require 'spec_helper'

describe "photos/index" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :user => nil,
        :title => "Title",
        :decription => "MyText",
        :path => "Path"
      ),
      stub_model(Photo,
        :user => nil,
        :title => "Title",
        :decription => "MyText",
        :path => "Path"
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Path".to_s, :count => 2
  end
end
