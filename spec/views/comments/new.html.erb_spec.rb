require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :post_id => 1,
      :body => "MyString",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_post_id", :name => "comment[post_id]"
      assert_select "input#comment_body", :name => "comment[body]"
      assert_select "input#comment_author", :name => "comment[author]"
    end
  end
end
