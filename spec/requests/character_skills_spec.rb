require 'rails_helper'

RSpec.describe "CharacterSkills", type: :request do
  describe "GET /character_skills" do
    it "works! (now write some real specs)" do
      get character_skills_path
      expect(response).to have_http_status(200)
    end
  end
end
