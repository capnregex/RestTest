require 'spec_helper'

describe "hounds/index.html.erb" do
  before(:each) do
    assign(:hounds, [
      stub_model(Hound,
        :name => "Name",
        :age => 1
      ),
      stub_model(Hound,
        :name => "Name",
        :age => 1
      )
    ])
  end

  it "renders a list of hounds" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
