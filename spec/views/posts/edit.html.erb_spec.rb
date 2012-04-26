require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :blog_id => 1,
      :body => "MyString",
      :author => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_blog_id", :name => "post[blog_id]"
      assert_select "input#post_body", :name => "post[body]"
      assert_select "input#post_author", :name => "post[author]"
      assert_select "input#post_tags", :name => "post[tags]"
    end
  end
end
