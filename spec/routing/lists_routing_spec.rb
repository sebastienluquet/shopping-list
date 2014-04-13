require "spec_helper"

describe ListsController do
  describe "routing" do

    it "routes to #index" do
      get("/account/lists").should route_to("account/lists#index")
    end

    it "routes to #new" do
      get("/account/lists/new").should route_to("account/lists#new")
    end

    it "routes to #show" do
      get("/account/lists/1").should route_to("account/lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/account/lists/1/edit").should route_to("account/lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/account/lists").should route_to("account/lists#create")
    end

    it "routes to #update" do
      put("/account/lists/1").should route_to("account/lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/account/lists/1").should route_to("account/lists#destroy", :id => "1")
    end

  end
end
