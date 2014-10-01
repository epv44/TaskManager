require "spec_helper"

describe LogHoursController do
  describe "routing" do

    it "routes to #index" do
      get("/log_hours").should route_to("log_hours#index")
    end

    it "routes to #new" do
      get("/log_hours/new").should route_to("log_hours#new")
    end

    it "routes to #show" do
      get("/log_hours/1").should route_to("log_hours#show", :id => "1")
    end

    it "routes to #edit" do
      get("/log_hours/1/edit").should route_to("log_hours#edit", :id => "1")
    end

    it "routes to #create" do
      post("/log_hours").should route_to("log_hours#create")
    end

    it "routes to #update" do
      put("/log_hours/1").should route_to("log_hours#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/log_hours/1").should route_to("log_hours#destroy", :id => "1")
    end

  end
end
