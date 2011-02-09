require 'spec_helper'

describe "hounds/show.html.erb" do
  before(:each) do
    @hound = assign(:hound, stub_model(Hound,
      :name => "Name",
      :age => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
    rendered.should contain(1.to_s)
  end
end
