require 'spec_helper'

describe "photos/edit" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :file_name => "MyString",
      :file_path => "MyString",
      :caption => "MyString"
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do
      assert_select "input#photo_file_name[name=?]", "photo[file_name]"
      assert_select "input#photo_file_path[name=?]", "photo[file_path]"
      assert_select "input#photo_caption[name=?]", "photo[caption]"
    end
  end
end
