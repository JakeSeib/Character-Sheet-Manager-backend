require "rails_helper"

RSpec.describe CharacterSkillsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/character_skills").to route_to("character_skills#index")
    end


    it "routes to #show" do
      expect(:get => "/character_skills/1").to route_to("character_skills#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/character_skills").to route_to("character_skills#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/character_skills/1").to route_to("character_skills#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/character_skills/1").to route_to("character_skills#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/character_skills/1").to route_to("character_skills#destroy", :id => "1")
    end

  end
end
