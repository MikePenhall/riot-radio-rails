require 'spec_helper'

describe "Administrators" do
  describe "GET /administrators" do
    it "it redirects to login screen" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get administrators_path
      response.status.should be(302)
    end

    it "it shows dashboard when signed in" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      sign_in administrator
      get administrators_path
      response.status.should be(302)
    end
  end
end
