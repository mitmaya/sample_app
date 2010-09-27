require "spec_helper"

describe AssociadosController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/associados" }.should route_to(:controller => "associados", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/associados/new" }.should route_to(:controller => "associados", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/associados/1" }.should route_to(:controller => "associados", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/associados/1/edit" }.should route_to(:controller => "associados", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/associados" }.should route_to(:controller => "associados", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/associados/1" }.should route_to(:controller => "associados", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/associados/1" }.should route_to(:controller => "associados", :action => "destroy", :id => "1")
    end

  end
end
