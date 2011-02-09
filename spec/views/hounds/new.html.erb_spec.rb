require 'spec_helper'

describe "hounds/new.html.erb" do
  before(:each) do
    assign(:hound, stub_model(Hound,
      :name => "MyString",
      :age => 1
    ).as_new_record)
  end

  it "renders new hound form" do
    render

    rendered.should have_selector("form", :action => hounds_path, :method => "post") do |form|
      form.should have_selector("input#hound_name", :name => "hound[name]")
      form.should have_selector("input#hound_age", :name => "hound[age]")
    end
  end
end
