require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :user => nil,
      :title => "MyString",
      :decription => "MyText",
      :path => "MyString"
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photos_path, "post" do
      assert_select "input#photo_user[name=?]", "photo[user]"
      assert_select "input#photo_title[name=?]", "photo[title]"
      assert_select "textarea#photo_decription[name=?]", "photo[decription]"
      assert_select "input#photo_path[name=?]", "photo[path]"
    end
  end
end
