require "spec_helper"

describe SupportshipsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/supportships" }.should route_to(:controller => "supportships", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/supportships/new" }.should route_to(:controller => "supportships", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/supportships/1" }.should route_to(:controller => "supportships", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/supportships/1/edit" }.should route_to(:controller => "supportships", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/supportships" }.should route_to(:controller => "supportships", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/supportships/1" }.should route_to(:controller => "supportships", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/supportships/1" }.should route_to(:controller => "supportships", :action => "destroy", :id => "1")
    end

  end
end
