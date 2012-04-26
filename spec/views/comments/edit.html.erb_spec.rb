require 'spec_helper'

describe "comments/edit" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :post_id => 1,
      :body => "MyString",
      :author => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path(@comment), :method => "post" do
      assert_select "input#comment_post_id", :name => "comment[post_id]"
      assert_select "input#comment_body", :name => "comment[body]"
      assert_select "input#comment_author", :name => "comment[author]"
    end
  end
end
