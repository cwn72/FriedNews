require 'rails_helper'

RSpec.describe HeadlinesController, :type => :controller do

  describe "GET getForDay" do
    it "returns http success" do
      get :getForDay
      expect(response).to be_success
    end
  end

end
