require 'rails_helper'

RSpec.describe Show do
  show = Show.new
  first_show = show.make_request(1)
  
  context "model" do
    it "has accessible attributes when show exists" do
      assert first_show["name"]
    end
    
    it "queries the correct ActiveResource model when show exists" do
      assert_equal first_show["name"].downcase, "pride"
    end
    
    context "has nil id when" do
      it "show doesn't exist" do
        assert_nil show.make_request(-1)["id"]
      end
      
      it "no id given" do
        assert_nil show.make_request["id"]
      end
    end
  end
end