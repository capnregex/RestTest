require 'spec_helper'

describe "hounds/edit.html.erb" do
  before(:each) do
    @hound = assign(:hound, stub_model(Hound,
      :name => "MyString",
      :age => 1
    ))
  end

  it "renders the edit hound form" do
    render

    rendered.should have_selector("form", :action => hound_path(@hound), :method => "post") do |form|
      form.should have_selector("input#hound_name", :name => "hound[name]")
      form.should have_selector("input#hound_age", :name => "hound[age]")
    end
  end
end
