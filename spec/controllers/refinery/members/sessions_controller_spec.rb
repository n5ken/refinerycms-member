require "spec_helper"

describe Refinery::Members::SessionsController do
  before do
    FactoryGirl.create(:refinery_user)
    @request.env["devise.mapping"] = Devise.mappings[:member]
  end

  describe "GET new" do
    subject { get :new }

    it { should be_success }
  end
end