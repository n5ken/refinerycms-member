require "spec_helper"

describe Refinery::Members::Admin::MembersController do
  login_refinery_superuser

  describe "GET index" do
    subject { get :index }

    it { should be_success }
  end
end
