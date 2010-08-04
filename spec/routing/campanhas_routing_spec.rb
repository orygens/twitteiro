require "spec_helper"

describe CampanhasController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/campanhas" }.should route_to(:controller => "campanhas", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/campanhas/new" }.should route_to(:controller => "campanhas", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/campanhas/1" }.should route_to(:controller => "campanhas", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/campanhas/1/edit" }.should route_to(:controller => "campanhas", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/campanhas" }.should route_to(:controller => "campanhas", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/campanhas/1" }.should route_to(:controller => "campanhas", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/campanhas/1" }.should route_to(:controller => "campanhas", :action => "destroy", :id => "1")
    end

  end
end
