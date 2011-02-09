require "spec_helper"

describe HoundsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/hounds" }.should route_to(:controller => "hounds", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/hounds/new" }.should route_to(:controller => "hounds", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/hounds/1" }.should route_to(:controller => "hounds", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/hounds/1/edit" }.should route_to(:controller => "hounds", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/hounds" }.should route_to(:controller => "hounds", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/hounds/1" }.should route_to(:controller => "hounds", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/hounds/1" }.should route_to(:controller => "hounds", :action => "destroy", :id => "1")
    end

  end
end
