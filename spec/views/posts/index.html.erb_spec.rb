require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :title => "Title",
        :body => "MyText",
        :excerpt => "MyText",
        :tags => "Tags",
        :categories => "Categories"
      ),
      stub_model(Post,
        :title => "Title",
        :body => "MyText",
        :excerpt => "MyText",
        :tags => "Tags",
        :categories => "Categories"
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
    assert_select "tr>td", :text => "Categories".to_s, :count => 2
  end
end
