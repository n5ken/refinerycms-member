require "spec_helper"

describe Refinery::Members::SessionsController do
  login_refinery_superuser

  before do
    @request.env["devise.mapping"] = Devise.mappings[:member]
  end

  describe "GET new" do
    subject { get :new }

    it { should be_success }
  end
end
