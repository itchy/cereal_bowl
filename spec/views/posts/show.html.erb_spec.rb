require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :blog_id => 1,
      :body => "Body",
      :author => "Author",
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Body/)
    rendered.should match(/Author/)
    rendered.should match(/Tags/)
  end
end
