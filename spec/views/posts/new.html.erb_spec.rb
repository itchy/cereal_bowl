require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :blog_id => 1,
      :body => "MyString",
      :author => "MyString",
      :tags => "MyString"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_blog_id", :name => "post[blog_id]"
      assert_select "input#post_body", :name => "post[body]"
      assert_select "input#post_author", :name => "post[author]"
      assert_select "input#post_tags", :name => "post[tags]"
    end
  end
end
