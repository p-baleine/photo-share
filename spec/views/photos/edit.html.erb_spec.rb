require 'spec_helper'

describe "photos/edit" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :user => nil,
      :title => "MyString",
      :decription => "MyText",
      :path => "MyString"
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do
      assert_select "input#photo_user[name=?]", "photo[user]"
      assert_select "input#photo_title[name=?]", "photo[title]"
      assert_select "textarea#photo_decription[name=?]", "photo[decription]"
      assert_select "input#photo_path[name=?]", "photo[path]"
    end
  end
end
